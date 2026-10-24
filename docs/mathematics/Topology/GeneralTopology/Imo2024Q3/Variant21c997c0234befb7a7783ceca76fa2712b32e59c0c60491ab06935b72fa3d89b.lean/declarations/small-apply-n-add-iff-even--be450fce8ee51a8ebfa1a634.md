# small_apply_N'_add_iff_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60761d36-bd2a-c664-9484-70f5e0c16fee",
  "kind": "lemma",
  "lexical_name": "small_apply_N'_add_iff_even",
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
  "slug": "small-apply-n-add-iff-even--be450fce8ee51a8ebfa1a634",
  "source": {
    "blob": "3c11165dfa3919745c9b6bf989c565b8f58a342c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 518,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be450fce8ee51a8ebfa1a63423f8a37a964ed339d1118e8a4248c01f80ac01a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60761d36-bd2a-c664-9484-70f5e0c16fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma small_apply_N'_add_iff_even {n : ℕ} : Small a (a (N' a N + n)) ↔ Even n := by
  induction n with
  | zero => simpa using hc.small_apply_N'
  | succ n ih =>
    by_cases he : Even n <;> rw [← add_assoc] <;> simp only [he, iff_true, iff_false] at ih
    · have hne : ¬ Even (n + 1) := by simp [Nat.not_even_iff_odd, he]
      simp only [hne, iff_false]
      exact hc.not_small_of_big (hc.apply_add_one_big_of_apply_small_of_N'_le ih (by omega))
    · have hb : Big a (a (N' a N + n)) := by
        simpa [ih] using hc.small_or_big_of_N'_le (j := N' a N + n) (by omega)
      simp [hc.apply_add_one_small_of_apply_big_of_N'_le hb (by omega), Nat.not_even_iff_odd.mp he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c11165dfa3919745c9b6bf989c565b8f58a342c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
