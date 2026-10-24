# certify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:714c2b482549ad2809dbf2a54a671a6a8b2f0c21c6e85c5feafacd8876bbc238",
  "kind": "def",
  "lexical_name": "certify",
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
  "slug": "certify--fe27096ffb2be7aaa5cdae4c",
  "source": {
    "blob": "ca26e8d70d4aec59f70aeb5c4cc26af0dac63bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TacticBundle/Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe27096ffb2be7aaa5cdae4c9a3d6a5fa5da1091a69ebc6541082685abd8d828",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TacticBundle/Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:714c2b482549ad2809dbf2a54a671a6a8b2f0c21c6e85c5feafacd8876bbc238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certify (b : TacticBundle) : IO Bool := do
  let env ← mkEmptyEnvironment
  let opts := Options.empty
  let input := b.code

  try
    -- Attempt to parse and elaborate the tactic code (not executed)
    let cmdStx ← Parser.runParserCategory input `tactic
    let _ ← Elab.Command.elabCommandTopLevel cmdStx
    return true
  catch e =>
    IO.println s!"[TacticCert] failed for '{b.name}': {e.toString}"
    return false

/-- Kernel-internal feature flag table for known certified tactics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TacticBundle/Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TacticBundle/Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca26e8d70d4aec59f70aeb5c4cc26af0dac63bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
