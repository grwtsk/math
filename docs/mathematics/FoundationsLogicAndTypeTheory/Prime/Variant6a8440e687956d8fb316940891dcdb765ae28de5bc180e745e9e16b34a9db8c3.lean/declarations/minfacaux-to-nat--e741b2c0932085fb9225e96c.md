# minFacAux_to_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:836ab622-b0b9-fdff-44a3-48af2924c70f",
  "kind": "theorem",
  "lexical_name": "minFacAux_to_nat",
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
  "slug": "minfacaux-to-nat--e741b2c0932085fb9225e96c",
  "source": {
    "blob": "dfa877dcf830418707e2715d984b5d2da708f119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e741b2c0932085fb9225e96ce4ffd72426a25de152a1d766eed8c4ad3c1d4514",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:836ab622-b0b9-fdff-44a3-48af2924c70f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minFacAux_to_nat {fuel : ℕ} {n k : PosNum} (h : Nat.sqrt n < fuel + k.bit1) :
    (minFacAux n fuel k : ℕ) = Nat.minFacAux n k.bit1 := by
  induction fuel generalizing k <;> rw [minFacAux, Nat.minFacAux]
  case zero =>
    rw [Nat.zero_add, Nat.sqrt_lt] at h
    simp only [h, ite_true]
  case succ fuel ih =>
    simp_rw [← mul_to_nat]
    simp only [cast_lt, dvd_to_nat]
    split_ifs <;> try rfl
    rw [ih] <;> [congr; convert! Nat.lt_succ_of_lt h using 1] <;>
      simp only [cast_bit1, cast_succ, Nat.succ_eq_add_one, add_assoc,
        add_left_comm, ← one_add_one_eq_two]

/-- Returns the smallest prime factor of `n ≠ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa877dcf830418707e2715d984b5d2da708f119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
