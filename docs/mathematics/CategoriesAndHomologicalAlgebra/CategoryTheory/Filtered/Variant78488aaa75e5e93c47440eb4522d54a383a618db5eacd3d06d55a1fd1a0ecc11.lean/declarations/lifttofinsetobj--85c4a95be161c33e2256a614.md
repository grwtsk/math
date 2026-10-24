# liftToFinsetObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4fed4cf6f03ff2194a6ac18708999d27ebb407f613560df5f00393e1f662101",
  "kind": "def",
  "lexical_name": "liftToFinsetObj",
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
  "slug": "lifttofinsetobj--85c4a95be161c33e2256a614",
  "source": {
    "blob": "cb1a1ebe34cdb18857edac7a3126ac497d6dad7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c4a95be161c33e2256a6140cc661584c0c93156c4dc4c2626c3f8c11ec8d86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4fed4cf6f03ff2194a6ac18708999d27ebb407f613560df5f00393e1f662101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftToFinsetObj (F : Discrete α ⥤ C) : (Finset (Discrete α))ᵒᵖ ⥤ C where
  obj s := ∏ᶜ (fun x : s.unop => F.obj x)
  map {Y _} h := Pi.lift fun y =>
    Pi.π (fun (x : { x // x ∈ Y.unop }) => F.obj x) ⟨y, h.unop.down.down y.2⟩


/-- If `C` has finite coproducts and filtered colimits, we can construct arbitrary coproducts by
    taking the colimit of the diagram formed by the coproducts of finite sets over the indexing
    type. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1a1ebe34cdb18857edac7a3126ac497d6dad7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
