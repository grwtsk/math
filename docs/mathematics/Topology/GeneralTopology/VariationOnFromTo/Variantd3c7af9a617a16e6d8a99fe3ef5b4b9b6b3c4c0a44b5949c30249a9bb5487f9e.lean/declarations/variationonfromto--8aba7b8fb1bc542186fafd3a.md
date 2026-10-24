# variationOnFromTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0154ea712a533088ffa0d9d09ffaf17652e29f0fe2aabd02f4a8fc17d97cad3c",
  "kind": "def",
  "lexical_name": "variationOnFromTo",
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
  "slug": "variationonfromto--8aba7b8fb1bc542186fafd3a",
  "source": {
    "blob": "8f9fd68d4e094bdd90370796d90ad12605cb8497",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8aba7b8fb1bc542186fafd3a212f0d46f23c8b674aa532d87f9b343750fb6e36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0154ea712a533088ffa0d9d09ffaf17652e29f0fe2aabd02f4a8fc17d97cad3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def variationOnFromTo (f : α → E) (s : Set α) (a b : α) : ℝ :=
  if a ≤ b then (eVariationOn f (s ∩ Icc a b)).toReal else -(eVariationOn f (s ∩ Icc b a)).toReal

namespace variationOnFromTo

variable (f : α → E) (s : Set α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f9fd68d4e094bdd90370796d90ad12605cb8497` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
