# evalNormCast0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dda401867747fb5fe8697176e231001f39d60ad5eb249161750540b88e22e9ba",
  "kind": "def",
  "lexical_name": "evalNormCast0",
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
  "slug": "evalnormcast0--b0f63ba736e7778b64cc96a0",
  "source": {
    "blob": "c05f016986b765249671b5ddf7bf4dd9f9a90b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0f63ba736e7778b64cc96a02e56c114b5013252559a2cc23a39067ae8301a25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dda401867747fb5fe8697176e231001f39d60ad5eb249161750540b88e22e9ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNormCast0 : Tactic := fun stx => do
  match stx with
  | `(tactic| norm_cast0 $cfg $[$loc?]?) =>
    let loc := if let some loc := loc? then expandLocation loc else Location.targets #[] true
    let cfg ← elabNormCastConfig cfg
    withMainContext do
      match loc with
      | Location.targets hyps target =>
        if target then (normCastTarget cfg)
        (← getFVarIds hyps).forM (normCastHyp cfg)
      | Location.wildcard =>
        normCastTarget cfg
        (← (← getMainGoal).getNondepPropHyps).forM (normCastHyp cfg)
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.Conv.normCast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05f016986b765249671b5ddf7bf4dd9f9a90b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
