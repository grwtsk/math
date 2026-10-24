# decideBrowserRuntime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bc87512b8d583fc4980fbc83768e4ca2e397ad8f79a5cd71be4fb4c792de7a4",
  "kind": "def",
  "lexical_name": "decideBrowserRuntime",
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
  "slug": "decidebrowserruntime--a8bf5855c51a6d96fc3f1fdf",
  "source": {
    "blob": "70ac45f9241994e94fe9a8c9368d25a497ec75d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42726f7773657243617272696572426f756e646172792e6c65616e/Variant827cd3b61539644d73d21ccb0c898a7f6aa16b7f7b6b7b2fefdc0402524ddabf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8bf5855c51a6d96fc3f1fdf594407394014143377ed19fefc4c8bb404a88dbf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42726f7773657243617272696572426f756e646172792e6c65616e/Variant827cd3b61539644d73d21ccb0c898a7f6aa16b7f7b6b7b2fefdc0402524ddabf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bc87512b8d583fc4980fbc83768e4ca2e397ad8f79a5cd71be4fb4c792de7a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decideBrowserRuntime (address : ThreeValuedPrimeAddress) :
    BrowserRuntimeDecision :=
  if address.deadAddress = 1 then
    if address.nullAddress = 1 then
      BrowserRuntimeDecision.allow
    else
      BrowserRuntimeDecision.pending
  else
    BrowserRuntimeDecision.residue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42726f7773657243617272696572426f756e646172792e6c65616e/Variant827cd3b61539644d73d21ccb0c898a7f6aa16b7f7b6b7b2fefdc0402524ddabf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42726f7773657243617272696572426f756e646172792e6c65616e/Variant827cd3b61539644d73d21ccb0c898a7f6aa16b7f7b6b7b2fefdc0402524ddabf.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70ac45f9241994e94fe9a8c9368d25a497ec75d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
