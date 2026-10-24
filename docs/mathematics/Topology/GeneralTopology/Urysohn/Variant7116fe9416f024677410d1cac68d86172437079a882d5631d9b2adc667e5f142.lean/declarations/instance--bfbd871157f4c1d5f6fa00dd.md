# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78cc55f2c32f0d3927b642b0dd195b5de04bae0d769342031a23dbd57accff18",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bfbd871157f4c1d5f6fa00dd",
  "source": {
    "blob": "9d41da4d5bc284dac4100a56a142c4df1159375f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfbd871157f4c1d5f6fa00ddd23bd9083ec746060b8ce38b7cc658a915491e88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78cc55f2c32f0d3927b642b0dd195b5de04bae0d769342031a23dbd57accff18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 90) metrizableSpace_of_t3_secondCountable : MetrizableSpace X :=
  let ⟨_, hf⟩ := exists_embedding_l_infty X
  hf.metrizableSpace

-- The `alias` command creates a definition, triggering the defLemma linter.
@[nolint defLemma, deprecated (since := "2024-11-13")] alias
metrizableSpace_of_t3_second_countable := metrizableSpace_of_t3_secondCountable

end TopologicalSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d41da4d5bc284dac4100a56a142c4df1159375f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
