# Irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a156409fe08b1154fc1800307d4be556ab3e488e5aeed35418e9baed17fb00",
  "kind": "structure",
  "lexical_name": "Irreducible",
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
  "slug": "irreducible--0495fbfd5c73dab30a2f4a72",
  "source": {
    "blob": "63ffcaaef2d8289ecd6b9d945bbf2b169b26da23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0495fbfd5c73dab30a2f4a72f66d4150f4b1b458b09673b6f6b7735987bd6a65",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a156409fe08b1154fc1800307d4be556ab3e488e5aeed35418e9baed17fb00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Irreducible (p : M) : Prop where
  /-- An irreducible element is not a unit. -/
  not_isUnit : ¬IsUnit p
  /-- If an irreducible element factors, then one factor is a unit. -/
  isUnit_or_isUnit ⦃a b⦄ : p = a * b → IsUnit a ∨ IsUnit b

namespace Irreducible

@[deprecated (since := "2025-04-09")] alias not_unit := not_isUnit
@[deprecated (since := "2025-04-10")] alias isUnit_or_isUnit' := isUnit_or_isUnit

end Irreducible

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ffcaaef2d8289ecd6b9d945bbf2b169b26da23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
