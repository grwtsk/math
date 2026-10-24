# subset_powersetLen_univ_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebf6ab58-305f-b336-dc0b-e2c2c63b3dd4",
  "kind": "theorem",
  "lexical_name": "subset_powersetLen_univ_iff",
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
  "slug": "subset-powersetlen-univ-iff--aaf9e3208295ff1c915aa2f0",
  "source": {
    "blob": "44e987bf5305a684f958bfeed489970b6abca21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf9e3208295ff1c915aa2f0b83728f0394a7a738498a8234f98489631ebd170",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebf6ab58-305f-b336-dc0b-e2c2c63b3dd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_powersetLen_univ_iff : 𝒜 ⊆ powersetLen r univ ↔ (𝒜 : Set (Finset α)).Sized r :=
  forall_congr' fun A => by rw [mem_powerset_len_univ_iff, mem_coe]
#align finset.subset_powerset_len_univ_iff Finset.subset_powersetLen_univ_iff

alias ⟨_, _root_.Set.Sized.subset_powersetLen_univ⟩ := subset_powersetLen_univ_iff
#align set.sized.subset_powerset_len_univ Set.Sized.subset_powersetLen_univ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44e987bf5305a684f958bfeed489970b6abca21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
