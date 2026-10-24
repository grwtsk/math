# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d588aecbff989a8a2e1739c0994e85b504150d598ed4efe6310c92d51aaff947",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c02fab7e660f550befb28875",
  "source": {
    "blob": "ae909bd2f79c7f48825a914ad3ad427832fbeffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant1d768885affd8cd2bb6359e4f357a68a42b4089698dd32c18a550ec1921fa760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c02fab7e660f550befb288751b73b5faf38c0bec29860808ea04988316dce410",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant1d768885affd8cd2bb6359e4f357a68a42b4089698dd32c18a550ec1921fa760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d588aecbff989a8a2e1739c0994e85b504150d598ed4efe6310c92d51aaff947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Reflective (forget₂ CpltSepUniformSpace UniformSpaceCat) where
  L := completionFunctor
  adj := adj
  map_surjective f := ⟨ConcreteCategory.ofHom f.hom, rfl⟩

open CategoryTheory.Limits

-- TODO Once someone defines `HasLimits UniformSpace`, turn this into an instance.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant1d768885affd8cd2bb6359e4f357a68a42b4089698dd32c18a550ec1921fa760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant1d768885affd8cd2bb6359e4f357a68a42b4089698dd32c18a550ec1921fa760.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae909bd2f79c7f48825a914ad3ad427832fbeffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
