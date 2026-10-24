# commitResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ea22f8e32a2a91fd60329ea84301aff7ee03cc7fb02327c5e5437329807c987",
  "kind": "def",
  "lexical_name": "commitResolution",
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
  "slug": "commitresolution--d93b08fb44099f5c0a1429dc",
  "source": {
    "blob": "a88132cece7f130234f8df094081149a82d69f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d93b08fb44099f5c0a1429dcd7484da0aacc33637adb28d5ea2ce249286f8998",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ea22f8e32a2a91fd60329ea84301aff7ee03cc7fb02327c5e5437329807c987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commitResolution
    (_authority : CommitAuthority)
    (cut : EvidenceCut)
    (result : SemanticTokenResolution cut)
    (state : CommitState) :
    CommitState :=
  let digest := resolutionDigest cut result
  if digest ∈ state.eventDigests then
    state
  else
    { eventDigests := insert digest state.eventDigests
      events := state.events.push (acceptedEvent cut result)
      lineage :=
        state.lineage.push
          { cutDigest := cutDigest cut
            parentDigest :=
              state.lineage.back?.map LineageRecord.resultDigest
            resultDigest := digest
            snapshot := cut.activeSnapshot } }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88132cece7f130234f8df094081149a82d69f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
