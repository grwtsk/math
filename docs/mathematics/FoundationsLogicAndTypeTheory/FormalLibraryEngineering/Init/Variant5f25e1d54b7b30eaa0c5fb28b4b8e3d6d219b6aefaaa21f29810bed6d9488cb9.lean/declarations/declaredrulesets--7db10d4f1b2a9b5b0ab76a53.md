# DeclaredRuleSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31b1f92e1442fa2964ef7060b787fafb454f7d6f6fc7efb294adcf6ab8f69531",
  "kind": "structure",
  "lexical_name": "DeclaredRuleSets",
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
  "slug": "declaredrulesets--7db10d4f1b2a9b5b0ab76a53",
  "source": {
    "blob": "f393449510f4ac0b4211fac8d6d98be3120aecbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant5f25e1d54b7b30eaa0c5fb28b4b8e3d6d219b6aefaaa21f29810bed6d9488cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7db10d4f1b2a9b5b0ab76a53a01be9adc69ea6932e372f4ce6f58a1998161bfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant5f25e1d54b7b30eaa0c5fb28b4b8e3d6d219b6aefaaa21f29810bed6d9488cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31b1f92e1442fa2964ef7060b787fafb454f7d6f6fc7efb294adcf6ab8f69531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeclaredRuleSets where
  /--
  The collection of declared rule sets. Each rule set has an extension, the
  name of the associated `SimpExtension` and the name of the associated
  `SimprocExtension`. The two simp extensions are expected to be declared.
  -/
  ruleSets : Std.HashMap RuleSetName (RuleSetExtension × Name × Name)
  /--
  The set of Aesop rule sets that are enabled by default.
  -/
  defaultRuleSets : Std.HashSet RuleSetName
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant5f25e1d54b7b30eaa0c5fb28b4b8e3d6d219b6aefaaa21f29810bed6d9488cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant5f25e1d54b7b30eaa0c5fb28b4b8e3d6d219b6aefaaa21f29810bed6d9488cb9.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f393449510f4ac0b4211fac8d6d98be3120aecbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
