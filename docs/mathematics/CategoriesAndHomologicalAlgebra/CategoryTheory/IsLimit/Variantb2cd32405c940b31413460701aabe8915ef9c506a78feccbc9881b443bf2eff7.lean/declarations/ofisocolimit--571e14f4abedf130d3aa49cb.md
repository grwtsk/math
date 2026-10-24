# ofIsoColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c6ee33d8788278aeb27b870421241c5894fb5ad5c91aacaa141ea80d2e4e289",
  "kind": "def",
  "lexical_name": "ofIsoColimit",
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
  "slug": "ofisocolimit--571e14f4abedf130d3aa49cb",
  "source": {
    "blob": "99af3ae8c3414304087b513eee2b9dc541385cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 681,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:571e14f4abedf130d3aa49cb017b3fa09670cad22a68593dfea49290ea934f19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c6ee33d8788278aeb27b870421241c5894fb5ad5c91aacaa141ea80d2e4e289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsoColimit {r t : Cocone F} (P : IsColimit r) (i : r ≅ t) : IsColimit t :=
  IsColimit.mkCoconeMorphism (fun s => i.inv ≫ P.descCoconeMorphism s) fun s m => by
    rw [i.eq_inv_comp]; apply P.uniq_cocone_morphism
#align category_theory.limits.is_colimit.of_iso_colimit CategoryTheory.Limits.IsColimit.ofIsoColimit

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99af3ae8c3414304087b513eee2b9dc541385cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
