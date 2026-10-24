# coe_mul_of_apply_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:583c846b-1533-94e8-3721-417cd1d1ede8",
  "kind": "theorem",
  "lexical_name": "coe_mul_of_apply_aux",
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
  "slug": "coe-mul-of-apply-aux--35202437dcfe37814e215e97",
  "source": {
    "blob": "632f6508a0c14eeedb22f30efbc642fb23f70f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35202437dcfe37814e215e973d7c1f9bc704fbea4d86b19adc8db75c1cad0e1e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:583c846b-1533-94e8-3721-417cd1d1ede8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_mul_of_apply_aux [AddMonoid ι] [SetLike.GradedMonoid A] (r : ⨁ i, A i) {i : ι}
    (r' : A i) {j n : ι} (H : ∀ x : ι, x + i = n ↔ x = j) :
    ((r * of (fun i => A i) i r') n : R) = r j * r' := by
  classical
    rw [coe_mul_apply_eq_dfinsuppSum, DFinsupp.sum_comm]
    apply (DFinsupp.sum_single_index _).trans
    swap
    · simp_rw [ZeroMemClass.coe_zero, mul_zero, ite_self]
      exact DFinsupp.sum_zero
    simp_rw [DFinsupp.sum, H, Finset.sum_ite_eq']
    split_ifs with h
    · rfl
    rw [DFinsupp.notMem_support_iff.mp h, ZeroMemClass.coe_zero, zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `632f6508a0c14eeedb22f30efbc642fb23f70f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
