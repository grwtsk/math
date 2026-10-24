# empty_nmem_countableBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93797a25-0898-4db9-da0e-4f8a8a56c35b",
  "kind": "theorem",
  "lexical_name": "empty_nmem_countableBasis",
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
  "slug": "empty-nmem-countablebasis--d44c424eec04c430f4db6dab",
  "source": {
    "blob": "98d06395051f49536a70c1b3294eecd50089e4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 684,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44c424eec04c430f4db6dab7a70ec26153546ad274eaf6f19cef7dbb5b62007",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93797a25-0898-4db9-da0e-4f8a8a56c35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empty_nmem_countableBasis [SecondCountableTopology α] : ∅ ∉ countableBasis α :=
  (exists_countable_basis α).choose_spec.2.1
#align topological_space.empty_nmem_countable_basis TopologicalSpace.empty_nmem_countableBasis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98d06395051f49536a70c1b3294eecd50089e4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
