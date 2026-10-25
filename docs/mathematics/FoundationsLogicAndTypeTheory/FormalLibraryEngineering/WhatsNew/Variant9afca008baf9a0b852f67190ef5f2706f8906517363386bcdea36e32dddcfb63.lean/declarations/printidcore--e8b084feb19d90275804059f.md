# printIdCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9168935b5c7331888e19a011d2d0b830b7981bd250eef00db2e80e068a2342e8",
  "kind": "def",
  "lexical_name": "printIdCore",
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
  "slug": "printidcore--e8b084feb19d90275804059f",
  "source": {
    "blob": "66914194be5f0150c3c2a4528dce0ee79f136ad7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant9afca008baf9a0b852f67190ef5f2706f8906517363386bcdea36e32dddcfb63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b084feb19d90275804059f55e3c9614882cdb98f62b7400c3ec064746cb15c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant9afca008baf9a0b852f67190ef5f2706f8906517363386bcdea36e32dddcfb63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9168935b5c7331888e19a011d2d0b830b7981bd250eef00db2e80e068a2342e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def printIdCore (id : Name) : ConstantInfo → CoreM MessageData
  | ConstantInfo.axiomInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "axiom" id us t u
  | ConstantInfo.defnInfo { levelParams := us, type := t, value := v, safety := s, .. } =>
    printDefLike "def" id us t v s
  | ConstantInfo.thmInfo { levelParams := us, type := t, value := v, .. } =>
    printDefLike "theorem" id us t v
  | ConstantInfo.opaqueInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "constant" id us t u
  | ConstantInfo.quotInfo { levelParams := us, type := t, .. } =>
    mkHeader' "Quotient primitive" id us t false
  | ConstantInfo.ctorInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "constructor" id us t u
  | ConstantInfo.recInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "recursor" id us t u
  | ConstantInfo.inductInfo
      { levelParams := us, numParams, numIndices, type := t, ctors, isUnsafe := u, .. } =>
    printInduct id us numParams numIndices t ctors u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant9afca008baf9a0b852f67190ef5f2706f8906517363386bcdea36e32dddcfb63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variant9afca008baf9a0b852f67190ef5f2706f8906517363386bcdea36e32dddcfb63.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66914194be5f0150c3c2a4528dce0ee79f136ad7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
