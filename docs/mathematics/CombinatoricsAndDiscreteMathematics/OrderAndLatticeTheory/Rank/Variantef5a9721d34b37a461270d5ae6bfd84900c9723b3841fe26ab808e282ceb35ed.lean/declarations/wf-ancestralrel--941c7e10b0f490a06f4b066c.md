# wf_ancestralRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:438f6fa7-6099-5529-c5b1-52f17f1cc626",
  "kind": "lemma",
  "lexical_name": "wf_ancestralRel",
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
  "slug": "wf-ancestralrel--941c7e10b0f490a06f4b066c",
  "source": {
    "blob": "601ad1f11509d9354702dc6628edba9d62a27683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941c7e10b0f490a06f4b066c75027c10e0d8b88a31c4158735b678bec060124e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:438f6fa7-6099-5529-c5b1-52f17f1cc626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wf_ancestralRel : WellFounded P.AncestralRel := by
  rw [wellFounded_iff_isEmpty_descending_chain]
  refine ⟨fun ⟨g, hg⟩ ↦ ?_⟩
  obtain ⟨n₀, hn₀⟩ :=
    (wellFoundedGT_iff_monotone_chain_condition (α := ℕᵒᵈ)).1
      inferInstance ⟨fun n ↦ (g n).1.dim,
        monotone_nat_of_le_succ (fun n ↦ (hg n).dim_le)⟩
  dsimp at hn₀
  refine not_strictAnti_of_wellFoundedLT (fun n ↦ f.rank (g (n₀ + n)))
    (strictAnti_nat_of_succ_lt (fun n ↦ ?_))
  rw [← add_assoc]
  exact f.lt (hg _) (by rw [← hn₀ (n₀ + n + 1) (by lia), ← hn₀ (n₀ + n) (by lia)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `601ad1f11509d9354702dc6628edba9d62a27683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
