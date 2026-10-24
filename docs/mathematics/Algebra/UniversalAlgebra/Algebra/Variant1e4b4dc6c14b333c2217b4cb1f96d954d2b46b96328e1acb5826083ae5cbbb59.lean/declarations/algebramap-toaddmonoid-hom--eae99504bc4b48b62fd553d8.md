# algebraMap_toAddMonoid_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:673ca9d9-a853-9a8f-fb32-b36083bce1eb",
  "kind": "theorem",
  "lexical_name": "algebraMap_toAddMonoid_hom",
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
  "slug": "algebramap-toaddmonoid-hom--eae99504bc4b48b62fd553d8",
  "source": {
    "blob": "df53e6ce4caaddfe1ee3235dcb79c0fd5fee5e69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae99504bc4b48b62fd553d8d39f6e66a1db1f21cca69a3556922fbe5fc73766",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:673ca9d9-a853-9a8f-fb32-b36083bce1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_toAddMonoid_hom :
    ↑(algebraMap R (⨁ i, A i)) = (DirectSum.of A 0).comp (GAlgebra.toFun : R →+ A 0) :=
  rfl
#align direct_sum.algebra_map_to_add_monoid_hom DirectSum.algebraMap_toAddMonoid_hom

/-- A family of `LinearMap`s preserving `DirectSum.GOne.one` and `DirectSum.GMul.mul`
describes an `AlgHom` on `⨁ i, A i`. This is a stronger version of `DirectSum.toSemiring`.

Of particular interest is the case when `A i` are bundled subojects, `f` is the family of
coercions such as `Submodule.subtype (A i)`, and the `[GMonoid A]` structure originates from
`DirectSum.GMonoid.ofAddSubmodules`, in which case the proofs about `GOne` and `GMul`
can be discharged by `rfl`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df53e6ce4caaddfe1ee3235dcb79c0fd5fee5e69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
