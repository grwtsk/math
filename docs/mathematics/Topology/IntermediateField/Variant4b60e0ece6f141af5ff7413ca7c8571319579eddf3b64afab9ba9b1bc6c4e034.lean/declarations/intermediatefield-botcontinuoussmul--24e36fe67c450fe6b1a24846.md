# IntermediateField.botContinuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3ae7a9650a11d92dfd2d260dd990711cf43a9adfdb7840b4c42fe516e3f097a",
  "kind": "instance",
  "lexical_name": "IntermediateField.botContinuousSMul",
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
  "slug": "intermediatefield-botcontinuoussmul--24e36fe67c450fe6b1a24846",
  "source": {
    "blob": "63265f9b3bf9189e27c407663b652fab71eceba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 26,
    "path": "GRWTSK/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24e36fe67c450fe6b1a24846d277d8c4b6af06bec839f9fc8045d65519e630af",
  "verification": {
    "reference": "docs/verification/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3ae7a9650a11d92dfd2d260dd990711cf43a9adfdb7840b4c42fe516e3f097a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IntermediateField.botContinuousSMul (M : IntermediateField K L) :
    ContinuousSMul (⊥ : IntermediateField K L) M :=
  Topology.IsInducing.continuousSMul (X := L) (N := (⊥ : IntermediateField K L)) (Y := M)
    (M := (⊥ : IntermediateField K L)) Topology.IsInducing.subtypeVal continuous_id rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63265f9b3bf9189e27c407663b652fab71eceba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
