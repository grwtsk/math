# exists_rowChange_of_frameRowSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4bc7f10-6c9a-8101-4171-bbfb26ae0405",
  "kind": "theorem",
  "lexical_name": "exists_rowChange_of_frameRowSpace_eq",
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
  "slug": "exists-rowchange-of-framerowspace-eq--01fe3a312fd93f7f3463b454",
  "source": {
    "blob": "37a1b34085d659e2813b33f42480249da509c856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01fe3a312fd93f7f3463b4545f0710a8be9bbb2cb30de7671143e7cd5e8b2adc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4bc7f10-6c9a-8101-4171-bbfb26ae0405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rowChange_of_frameRowSpace_eq (A B : Matrix (Fin k) (Fin n) ℝ)
    (hB : B.rank = k) (h : frameRowSpace A = frameRowSpace B) :
    ∃ U : Matrix (Fin k) (Fin k) ℝ, Matrix.det U ≠ 0 ∧ B = U * A := by
  classical
  have hr : ∀ i : Fin k, ∃ u : Fin k → ℝ, u ᵥ* A = B.row i := by
    intro i
    apply (mem_frameRowSpace_iff A (B.row i)).mp
    rw [h]
    exact row_mem_frameRowSpace B i
  choose U hU using hr
  have hBA : B = U * A := by
    apply Matrix.ext
    intro i j
    exact (congrFun (hU i) j).symm
  refine ⟨U, ?_, hBA⟩
  obtain ⟨c, hc⟩ := exists_columnMinor_ne_zero_of_rank B hB
  intro hzero
  apply hc
  rw [hBA, columnMinor_mul_left, hzero, zero_mul]

/-- Full-rank row spaces are the orbits of genuine invertible row changes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a1b34085d659e2813b33f42480249da509c856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
