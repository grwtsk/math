# isLimitRaiseCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b5d05a6940ab29a7e4d947b4bb4a9016cf63eaae847ad4ee5ba4fd9b32905c8",
  "kind": "def",
  "lexical_name": "isLimitRaiseCone",
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
  "slug": "islimitraisecone--2067489f728971316d8f22ab",
  "source": {
    "blob": "5c7a8276f2193a95f777db0f74e196882db2106c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2067489f728971316d8f22ab25a03986197567e065c2eb8fb7bf5ecdd7e1a1bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b5d05a6940ab29a7e4d947b4bb4a9016cf63eaae847ad4ee5ba4fd9b32905c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitRaiseCone [IsConnected J] {B : D} {F : J ⥤ CostructuredArrow K B}
    {c : Cone (F ⋙ CostructuredArrow.proj K B)}
    (t : IsLimit c) : IsLimit (raiseCone c) where
  lift s :=
    CostructuredArrow.homMk (t.lift ((CostructuredArrow.proj K B).mapCone s)) <| by
      simp [← Functor.map_comp_assoc]
  uniq s m K := by
    ext1
    apply t.hom_ext
    intro j
    simp [← K j]

end CreatesConnected

/-- The projection from `CostructuredArrow K B` to `C` creates any connected limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7a8276f2193a95f777db0f74e196882db2106c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
