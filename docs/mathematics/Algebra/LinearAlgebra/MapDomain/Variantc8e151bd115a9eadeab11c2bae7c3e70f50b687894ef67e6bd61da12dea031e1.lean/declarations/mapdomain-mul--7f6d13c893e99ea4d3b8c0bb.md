# mapDomain_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db7a1a9e-d664-978a-4b27-14c2a1d20995",
  "kind": "theorem",
  "lexical_name": "mapDomain_mul",
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
  "slug": "mapdomain-mul--7f6d13c893e99ea4d3b8c0bb",
  "source": {
    "blob": "4c37ca509dac3dc20fb61eb1953854511862eec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6d13c893e99ea4d3b8c0bb54aa6379930be63d3fb8d1c0da84d4ea3b5dac6b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7a1a9e-d664-978a-4b27-14c2a1d20995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapDomain_mul {α : Type*} {β : Type*} {α₂ : Type*} [Semiring β] [Add α] [Add α₂]
    {F : Type*} [FunLike F α α₂] [AddHomClass F α α₂] (f : F) (x y : AddMonoidAlgebra β α) :
    mapDomain f (x * y) = mapDomain f x * mapDomain f y := by
  simp_rw [mul_def, mapDomain_sum, mapDomain_single, map_add]
  rw [Finsupp.sum_mapDomain_index]
  · congr
    ext a b
    rw [Finsupp.sum_mapDomain_index]
    · simp
    · simp [mul_add]
  · simp
  · simp [add_mul]

/-- If `f : G → H` is an additive homomorphism between two additive monoids, then
`Finsupp.mapDomain f` is a ring homomorphism between their add monoid algebras. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c37ca509dac3dc20fb61eb1953854511862eec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
