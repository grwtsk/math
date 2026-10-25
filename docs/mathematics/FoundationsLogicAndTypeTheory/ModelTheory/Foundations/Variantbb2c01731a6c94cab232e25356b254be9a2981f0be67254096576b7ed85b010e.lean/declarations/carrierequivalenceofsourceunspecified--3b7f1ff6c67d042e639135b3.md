# carrierEquivalenceOfSourceUnspecified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87142177b1b3c8f0cd49ecc7fb8408aabe0621f98504125f5d7c267828eb3c9c",
  "kind": "def",
  "lexical_name": "carrierEquivalenceOfSourceUnspecified",
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
  "slug": "carrierequivalenceofsourceunspecified--3b7f1ff6c67d042e639135b3",
  "source": {
    "blob": "91c9c4de777855b6591f9860532a896b7b905570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b7f1ff6c67d042e639135b333ad1ca8a85b3ec13163a5dd20037cac451eae05",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87142177b1b3c8f0cd49ecc7fb8408aabe0621f98504125f5d7c267828eb3c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def carrierEquivalenceOfSourceUnspecified
    {source : Theory.{uSourceObject, uSourceProposition}}
    {target : Theory.{uTargetObject, uTargetProposition}}
    {sourceProfile targetProfile : QuantifierProfile}
    {mapObject : source.Object → target.Object}
    (compatibility : QuantifierUnspecifiedCompatibility source target
      mapObject sourceProfile targetProfile)
    (sourceUnspecified : sourceProfile.HasUnspecified) :
    QuantifierCarrierEquivalence source.Object target.Object :=
  match compatibility with
  | .fullySpecified sourceSpecified _ _ _ _ =>
      False.elim (sourceSpecified sourceUnspecified)
  | .evidenced carrierEquivalence _ _ _ => carrierEquivalence

/-- The carrier equivalence exposed for an unknown profile is the exact map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c9c4de777855b6591f9860532a896b7b905570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
