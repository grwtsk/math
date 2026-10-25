# ProxyEquivConfig.default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e453fc737a37d16439a66ac9b7c46d71537929e67ec735d721b59d753c33e149",
  "kind": "def",
  "lexical_name": "ProxyEquivConfig.default",
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
  "slug": "proxyequivconfig-default--0f2f72493600703f286a7fe1",
  "source": {
    "blob": "622dea343a6db47ac6c775cf21adc047d5b89798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f2f72493600703f286a7fe19e2c192ca00cbd3004c7d0fa8adc67ba244f83e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e453fc737a37d16439a66ac9b7c46d71537929e67ec735d721b59d753c33e149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProxyEquivConfig.default (indVal : InductiveVal) : ProxyEquivConfig where
  proxyName := indVal.name.mkStr "proxyType"
  proxyEquivName := indVal.name.mkStr "proxyTypeEquiv"
  mkCtorProxyType := defaultMkCtorProxyType
  mkProxyType := defaultMkProxyType

/--
Generates a proxy type for the inductive type and an equivalence from the proxy type to the type.

If the declarations already exist, there is a check that they are correct.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `622dea343a6db47ac6c775cf21adc047d5b89798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
