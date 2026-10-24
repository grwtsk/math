# imageSieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da08c17808862ec4182e887c5ff7bb4e32881d38c2ae4aa80207a1008e4415bf",
  "kind": "def",
  "lexical_name": "imageSieve",
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
  "slug": "imagesieve--911e07cb4a91b9a74c6f007d",
  "source": {
    "blob": "18ccfd293eefb7003817d9002f84d70e3a9ac8ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:911e07cb4a91b9a74c6f007d27937a83c50d88665878452866d8c1e0eca9d5b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da08c17808862ec4182e887c5ff7bb4e32881d38c2ae4aa80207a1008e4415bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def imageSieve {F G : Cᵒᵖ ⥤ A} (f : F ⟶ G) {U : C} (s : ToType (G.obj (op U))) : Sieve U where
  arrows V i := ∃ t : ToType (F.obj (op V)), f.app _ t = G.map i.op s
  downward_closed := by
    rintro V W i ⟨t, ht⟩ j
    refine ⟨F.map j.op t, ?_⟩
    rw [op_comp, G.map_comp, ConcreteCategory.comp_apply, ← ht, NatTrans.naturality_apply f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18ccfd293eefb7003817d9002f84d70e3a9ac8ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
