# ofPointIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a2b19f1ac82c1f6fb0a01587c3b95e7190fcb443c057d980d1a6e868303c6a8",
  "kind": "def",
  "lexical_name": "ofPointIso",
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
  "slug": "ofpointiso--9549f74ede8bee9962f4f460",
  "source": {
    "blob": "99af3ae8c3414304087b513eee2b9dc541385cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 715,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9549f74ede8bee9962f4f46046a2edf34a9bbf4145bc729d351038ba7a8ad9ea",
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

Occurrence: `declaration:3a2b19f1ac82c1f6fb0a01587c3b95e7190fcb443c057d980d1a6e868303c6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofPointIso {r t : Cocone F} (P : IsColimit r) [i : IsIso (P.desc t)] : IsColimit t :=
  ofIsoColimit P (by
    haveI : IsIso (P.descCoconeMorphism t).Hom := i
    haveI : IsIso (P.descCoconeMorphism t) := Cocones.cocone_iso_of_hom_iso _
    apply asIso (P.descCoconeMorphism t))
#align category_theory.limits.is_colimit.of_point_iso CategoryTheory.Limits.IsColimit.ofPointIso

variable {t : Cocone F}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99af3ae8c3414304087b513eee2b9dc541385cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
