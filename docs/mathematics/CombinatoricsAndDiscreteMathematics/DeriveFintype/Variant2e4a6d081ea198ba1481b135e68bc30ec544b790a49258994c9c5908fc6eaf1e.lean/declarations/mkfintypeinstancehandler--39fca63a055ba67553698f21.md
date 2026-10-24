# mkFintypeInstanceHandler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e0fd17f328d9d116e5352aad13729817dcebdbeeb86899bc4504e9616cd1d4e",
  "kind": "def",
  "lexical_name": "mkFintypeInstanceHandler",
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
  "slug": "mkfintypeinstancehandler--39fca63a055ba67553698f21",
  "source": {
    "blob": "04b898df35fd7c26b197d611d2adc12123dcdd33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39fca63a055ba67553698f216b6e37ad20ff9956268f671cdae8c35a010ae39a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e0fd17f328d9d116e5352aad13729817dcebdbeeb86899bc4504e9616cd1d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFintypeInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if h : declNames.size ≠ 1 then
    return false -- mutually inductive types are not supported
  else
    let declName := declNames[0]
    if ← isEnumType declName then
      mkFintypeEnum declName
      return true
    else
      mkFintype declName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b898df35fd7c26b197d611d2adc12123dcdd33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
