# ActivationValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:562c79477f94545f21a6bde8e97dd8d7435cd6cfbd8d11cdaf5457930e085b8c",
  "kind": "structure",
  "lexical_name": "ActivationValid",
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
  "slug": "activationvalid--0b200d4ec48b355021c5eae3",
  "source": {
    "blob": "7f5581f1717a054e3fbc9f608b3aeef3155cefb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StaticSnapshot/Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b200d4ec48b355021c5eae3bd95d5f150f5ab0257140b17681cc0d6c427b428",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StaticSnapshot/Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:562c79477f94545f21a6bde8e97dd8d7435cd6cfbd8d11cdaf5457930e085b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ActivationValid
    (imports conflict : BitMatrix n n)
    (overlay : ActiveOverlay n) : Prop where
  ready :
    ∀ i, overlay.active i = true →
      overlay.buildComplete i = true ∧
      overlay.kernelChecked i = true ∧
      overlay.runtimeChecked i = true ∧
      overlay.quarantined i = false
  dependencyClosed :
    ∀ i j,
      overlay.active i = true →
      imports i j = true →
      overlay.active j = true
  conflictFree :
    ∀ i j,
      overlay.active i = true →
      overlay.active j = true →
      conflict i j = false

end URSM.Composite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StaticSnapshot/Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StaticSnapshot/Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5581f1717a054e3fbc9f608b3aeef3155cefb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
