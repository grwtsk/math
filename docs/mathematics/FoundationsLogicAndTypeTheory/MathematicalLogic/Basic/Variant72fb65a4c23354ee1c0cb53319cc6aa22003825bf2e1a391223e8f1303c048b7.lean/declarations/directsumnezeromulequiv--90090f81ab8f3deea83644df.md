# directSumNeZeroMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c926461fe43cc4e9cf354924a4c87a629691f2f371ec904642e65e454a8a87d",
  "kind": "def",
  "lexical_name": "directSumNeZeroMulEquiv",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "directsumnezeromulequiv--90090f81ab8f3deea83644df",
  "source": {
    "blob": "5a02ff1e491f68349a6775448b30a1d52b81e703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90090f81ab8f3deea83644df4ed3e9d283b5688eced6a2a1e917a8d44e99e9e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c926461fe43cc4e9cf354924a4c87a629691f2f371ec904642e65e454a8a87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def directSumNeZeroMulEquiv (ι : Type) [DecidableEq ι] (p : ι → ℕ) (n : ι → ℕ) :
    (⨁ i : {i // n i ≠ 0}, ZMod (p i ^ n i)) ≃+ ⨁ i, ZMod (p i ^ n i) where
  toFun := directSumNeZeroMulHom p n
  invFun := DirectSum.toAddMonoid fun i ↦
    if h : n i = 0 then 0 else DirectSum.of (fun j : {i // n i ≠ 0} ↦ ZMod (p j ^ n j)) ⟨i, h⟩
  left_inv x := by
    induction x using DirectSum.induction_on with
    | zero => simp
    | of i x =>
      rw [directSumNeZeroMulHom, DirectSum.toAddMonoid_of, DirectSum.toAddMonoid_of,
        dif_neg i.prop]
    | add x y hx hy => rw [map_add, map_add, hx, hy]
  right_inv x := by
    induction x using DirectSum.induction_on with
    | zero => rw [map_zero, map_zero]
    | of i x =>
      rw [DirectSum.toAddMonoid_of]
      split_ifs with h
      · simp [(ZMod.subsingleton_iff.2 <| by rw [h, pow_zero]).elim x 0]
      · simp_rw [directSumNeZeroMulHom, DirectSum.toAddMonoid_of]
    | add x y hx hy => rw [map_add, map_add, hx, hy]
  map_add' := map_add (directSumNeZeroMulHom p n)

universe u

namespace Module

variable (M : Type u)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a02ff1e491f68349a6775448b30a1d52b81e703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
