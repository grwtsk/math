# stieltjes_tail_bddBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4ae5a11-b1cc-de7b-4955-3e8c7c2ef382",
  "kind": "theorem",
  "lexical_name": "stieltjes_tail_bddBelow",
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
  "slug": "stieltjes-tail-bddbelow--8cd680ae8fec93b436dafc06",
  "source": {
    "blob": "73257a70d761c6641abf20f75b2abe747238faf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd680ae8fec93b436dafc06cb42eebf6754ea91eaf8b392a361f854bf7d8557",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ae5a11-b1cc-de7b-4955-3e8c7c2ef382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stieltjes_tail_bddBelow : BddBelow (range (fun n : ℕ => stieltjesSequence (n + 4))) := by
  refine ⟨stieltjesLowerFour, ?_⟩
  rintro _ ⟨n, rfl⟩
  exact lower_four_le_stieltjes_tail n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73257a70d761c6641abf20f75b2abe747238faf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
