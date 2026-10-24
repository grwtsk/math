# EveryRejectedCutWitnessed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8731d0cf6edd939d48ae4d8ec73c5253bee73ea4a94f8f787101024e4c8e8ef6",
  "kind": "def",
  "lexical_name": "EveryRejectedCutWitnessed",
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
  "slug": "everyrejectedcutwitnessed--a956fdc431b774ab36d5e869",
  "source": {
    "blob": "4bfda113a3fadd614f3fc1c4f5eb6808a5fef67d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EveryRejectedCutWitnessed/Variant0e0769ba38b1a642cd74e850b743f7b0e4d8f489dde4d1f9225fc25bef4e387b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a956fdc431b774ab36d5e86937e4b9bad8b43be40c65eb25b57ad6b6f291ed16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EveryRejectedCutWitnessed/Variant0e0769ba38b1a642cd74e850b743f7b0e4d8f489dde4d1f9225fc25bef4e387b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8731d0cf6edd939d48ae4d8ec73c5253bee73ea4a94f8f787101024e4c8e8ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EveryRejectedCutWitnessed
    (rejectedCuts : Array (Array SourceCommandId × Array SourceCommandId))
    (witnesses : Array CollapseWitness) : Prop :=
  ∀ cut ∈ rejectedCuts, ∃ witness ∈ witnesses,
    witness.leftCommands = cut.1 ∧ witness.rightCommands = cut.2 ∧
      witness.Valid

end Mathematics.Element
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EveryRejectedCutWitnessed/Variant0e0769ba38b1a642cd74e850b743f7b0e4d8f489dde4d1f9225fc25bef4e387b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EveryRejectedCutWitnessed/Variant0e0769ba38b1a642cd74e850b743f7b0e4d8f489dde4d1f9225fc25bef4e387b.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bfda113a3fadd614f3fc1c4f5eb6808a5fef67d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
