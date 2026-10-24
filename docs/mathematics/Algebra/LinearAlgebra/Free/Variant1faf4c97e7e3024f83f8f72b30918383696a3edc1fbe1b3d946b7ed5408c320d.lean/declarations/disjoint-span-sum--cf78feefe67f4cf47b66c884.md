# disjoint_span_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acb60528-849c-1219-d26c-7569c1a49fa7",
  "kind": "theorem",
  "lexical_name": "disjoint_span_sum",
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
  "slug": "disjoint-span-sum--cf78feefe67f4cf47b66c884",
  "source": {
    "blob": "30641eed758d13db6192f293859da9d12f9be75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf78feefe67f4cf47b66c884aa7d3fa781128d27fce7a5bed623e74c09298aa6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acb60528-849c-1219-d26c-7569c1a49fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem disjoint_span_sum : Disjoint (span R (range (u ∘ Sum.inl)))
    (span R (range (u ∘ Sum.inr))) := by
  rw [huv, disjoint_comm]
  refine Disjoint.mono_right (span_mono (range_comp_subset_range _ _)) ?_
  rw [← LinearMap.range_coe, span_eq (LinearMap.range S.f.hom), hS.moduleCat_range_eq_ker]
  exact range_ker_disjoint hw

include hv hm in

/-- In the commutative diagram
```
             f     g
    0 --→ X₁ --→ X₂ --→ X₃
          ↑      ↑      ↑
         v|     u|     w|
          ι  → ι ⊕ ι' ← ι'
```
where the top row is an exact sequence of modules and the maps on the bottom are `Sum.inl` and
`Sum.inr`. If `u` is injective and `v` and `w` are linearly independent, then `u` is linearly
independent. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30641eed758d13db6192f293859da9d12f9be75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
