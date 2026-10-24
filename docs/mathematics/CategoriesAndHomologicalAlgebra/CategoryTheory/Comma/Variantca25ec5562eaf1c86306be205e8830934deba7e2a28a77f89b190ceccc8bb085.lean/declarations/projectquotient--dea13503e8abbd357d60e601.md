# projectQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8032b58d4b68be2f7fbea791377e54a04393f22eae7ecd8af4220d547ec375de",
  "kind": "def",
  "lexical_name": "projectQuotient",
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
  "slug": "projectquotient--dea13503e8abbd357d60e601",
  "source": {
    "blob": "fee4f1f5a92a2b108022dd7b7a7dd07ed3330188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dea13503e8abbd357d60e60177b4be957c0cb6d607ea88e38a219bfbfb35f65b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8032b58d4b68be2f7fbea791377e54a04393f22eae7ecd8af4220d547ec375de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectQuotient [HasFiniteColimits C] [PreservesFiniteColimits S] {A : CostructuredArrow S T} :
    Subobject (op A) → Subobject (op A.left) := by
  refine Subobject.lift (fun P f hf => Subobject.mk f.unop.left.op) ?_
  intro P Q f g hf hg i hi
  refine Subobject.mk_eq_mk_of_comm _ _ ((proj S T).mapIso i.unop).op (Quiver.Hom.unop_inj ?_)
  have := congr_arg Quiver.Hom.unop hi
  simpa using! congr_arg CommaMorphism.left this

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee4f1f5a92a2b108022dd7b7a7dd07ed3330188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
