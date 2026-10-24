# AffineIndependent.affineSpan_disjoint_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25997d39-89af-4cd7-04c2-046734372089",
  "kind": "theorem",
  "lexical_name": "AffineIndependent.affineSpan_disjoint_of_disjoint",
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
  "slug": "affineindependent-affinespan-disjoint-of-disjoint--ca1cb55c677f6cd7c6f4ff97",
  "source": {
    "blob": "1ba3e3fa915b8879d73756648f55d4117c8e328b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 442,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1cb55c677f6cd7c6f4ff9756de816e4bf9644d903d06302020bdd5e7894beb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25997d39-89af-4cd7-04c2-046734372089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineIndependent.affineSpan_disjoint_of_disjoint [Nontrivial k] {p : ι → P}
    (ha : AffineIndependent k p) {s1 s2 : Set ι} (hd : Disjoint s1 s2) :
    Disjoint (affineSpan k (p '' s1) : Set P) (affineSpan k (p '' s2)) := by
  refine' Set.disjoint_left.2 fun p0 hp0s1 hp0s2 => _
  cases' ha.exists_mem_inter_of_exists_mem_inter_affineSpan hp0s1 hp0s2 with i hi
  exact Set.disjoint_iff.1 hd hi
#align affine_independent.affine_span_disjoint_of_disjoint AffineIndependent.affineSpan_disjoint_of_disjoint

/-- If a family is affinely independent, a point in the family is in
the span of some of the points given by a subset of the index type if
and only if that point's index is in the subset, if the underlying
ring is nontrivial. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba3e3fa915b8879d73756648f55d4117c8e328b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
