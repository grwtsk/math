# addTransitiveImps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74713495ef36ae8a0336f85987ac56da63b7c2a6fe092ec4db031b6b1ea65fef",
  "kind": "def",
  "lexical_name": "addTransitiveImps",
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
  "slug": "addtransitiveimps--ba169f76d5a028a0d22ba8da",
  "source": {
    "blob": "b83293af180ce45823c46310efb782862baeb4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba169f76d5a028a0d22ba8da877e2fe05a0911f05ffa28f9e951b6c75ea98b3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74713495ef36ae8a0336f85987ac56da63b7c2a6fe092ec4db031b6b1ea65fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addTransitiveImps (transImps : Needs) (imp : Import) (j : Nat) (impTransImps : Needs) : Needs := Id.run do
  let mut transImps := transImps

  -- `j ∈ transDeps[i].pub` if `i -(public import)->+ j`
  if imp.isExported && !imp.isMeta then
    transImps := transImps.union .pub {j} |>.union .pub (impTransImps.get .pub)

  if !imp.isExported && !imp.isMeta then
    -- `j ∈ transDeps[i].priv` if `i -(import ...)-> _ -(public import)->* j`
    transImps := transImps.union .priv {j} |>.union .priv (impTransImps.get .pub)
    if imp.importAll then
      -- `j ∈ transDeps[i].priv` if `i -(import all)->+ i'` and `j ∈ transDeps[i'].pub/priv`
      transImps := transImps.union .priv (impTransImps.get .pub ∪ impTransImps.get .priv)

  -- `j ∈ transDeps[i].metaPub` if `i -(public (meta)? import)->* _ -(public meta import)-> _ -(public (meta)? import)->* j`
  if imp.isExported then
    transImps := transImps.union .metaPub (impTransImps.get .metaPub)
    if imp.isMeta then
      transImps := transImps.union .metaPub {j} |>.union .metaPub (impTransImps.get .pub ∪ impTransImps.get .metaPub)

  if !imp.isExported then
    if imp.isMeta then
      -- `j ∈ transDeps[i].metaPriv` if `i -(meta import ...)-> _ -(public (meta)? import)->* j`
      transImps := transImps.union .metaPriv {j} |>.union .metaPriv (impTransImps.get .pub ∪ impTransImps.get .metaPub)
    if imp.importAll then
      -- `j ∈ transDeps[i].metaPriv` if `i -(import all)->+ i'` and `j ∈ transDeps[i'].metaPub/metaPriv`
      transImps := transImps.union .metaPriv (impTransImps.get .metaPub ∪ impTransImps.get .metaPriv)
    else
      -- `j ∈ transDeps[i].metaPriv` if `i -(import ...)-> i'` and `j ∈ transDeps[i'].metaPub`
      transImps := transImps.union .metaPriv (impTransImps.get .metaPub)

  transImps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83293af180ce45823c46310efb782862baeb4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
