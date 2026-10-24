# hasEigenvalue_of_isRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f3df0d4-a7a7-fe60-c983-7446a3adc2a3",
  "kind": "theorem",
  "lexical_name": "hasEigenvalue_of_isRoot",
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
  "slug": "haseigenvalue-of-isroot--5f43b21878195069f15ca5f5",
  "source": {
    "blob": "b4b1bb41034abc0fb395953ff8b23760af0b86fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f43b21878195069f15ca5f5023edaeab8b9cf1a168726e04af06249df4c9ddf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f3df0d4-a7a7-fe60-c983-7446a3adc2a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEigenvalue_of_isRoot (h : (minpoly R f).IsRoot μ) : f.HasEigenvalue μ := by
  obtain ⟨q, hq⟩ := dvd_iff_isRoot.mpr h
  obtain ⟨v, hv⟩ : ∃ v : M, q.aeval f v ≠ 0 := by
    by_contra! h_contra
    have := minpoly.min R f
      ((monic_X_sub_C μ).of_mul_monic_left (hq ▸ minpoly.monic (Algebra.IsIntegral.isIntegral f)))
      (LinearMap.ext h_contra)
    rw [hq, degree_mul, degree_X_sub_C, degree_eq_natDegree] at this
    · norm_cast at this; grind
    · rintro rfl
      exact minpoly.ne_zero (Algebra.IsIntegral.isIntegral f) (mul_zero (X - C μ) ▸ hq)
  refine Module.End.hasEigenvalue_of_hasEigenvector (hasEigenvector_iff.mpr ⟨?_, hv⟩)
  simpa [sub_eq_zero, hq] using congr($(minpoly.aeval R f) v)

variable [IsTorsionFree R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant232dd5fc6ca2627138956e9cb086b84eb4699ed80e54fc257dd46a7742700d09.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b1bb41034abc0fb395953ff8b23760af0b86fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
