# inputLengths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7686fe99c1690679df45382141902ec92eaa8d4561f3aea48961c53eb3a177c0",
  "kind": "def",
  "lexical_name": "inputLengths",
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
  "slug": "inputlengths--71d1ea3021f319ab5c4560f9",
  "source": {
    "blob": "6dec509fd6ef7a2612ce97cc2b03a20958f788dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71d1ea3021f319ab5c4560f996893dd2881b2d2a0be5b803c3d166fea2ed0318",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7686fe99c1690679df45382141902ec92eaa8d4561f3aea48961c53eb3a177c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inputLengths (objects : Objects) (inputs : Inputs) : Bool :=
  recordsMatch objects inputs.source.records inputs.source.slots &&
  recordsMatch objects inputs.destination.records inputs.destination.slots &&
  recordsMatch objects inputs.archive.records inputs.archive.slots &&
  recordsMatch objects inputs.preservation.records inputs.preservation.slots &&
  decide (inputs.expectedRaw.length = inputs.capturedRaw.length) &&
  (inputs.expectedRaw.zip inputs.capturedRaw).all fun pair => recordsMatch objects pair.1 pair.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dec509fd6ef7a2612ce97cc2b03a20958f788dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
