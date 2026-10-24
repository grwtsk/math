# high_scores

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0554dba218c4f1b9e782bfd5d4ad9632f4481250",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/545544b41564ea0d246e148c836e7447720f9025d819da6b73dbbb8c9cd29030.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03b543f5-870f-47ab-2f44-0cd034b79c5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf1d8be6-50f7-3c70-249d-ed21fd2fced8",
  "kind": "theorem",
  "lexical_name": "high_scores",
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
  "slug": "high-scores--ddf6d80938f3585b496cb7c3",
  "source": {
    "blob": "0554dba218c4f1b9e782bfd5d4ad9632f4481250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant545544b41564ea0d246e148c836e7447720f9025d819da6b73dbbb8c9cd29030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf6d80938f3585b496cb7c3283fb0a6afbbf1306bf0c4177d0200ed69d96284",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant545544b41564ea0d246e148c836e7447720f9025d819da6b73dbbb8c9cd29030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf1d8be6-50f7-3c70-249d-ed21fd2fced8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_scores [LinearOrder β] [NoMaxOrder β] {u : ℕ → β} (hu : Tendsto u atTop atTop) :
    ∀ N, ∃ n ≥ N, ∀ k < n, u k < u n := by
  intro N
  obtain ⟨k : ℕ, - : k ≤ N, hku : ∀ l ≤ N, u l ≤ u k⟩ : ∃ k ≤ N, ∀ l ≤ N, u l ≤ u k :=
    exists_max_image _ u (finite_le_nat N) ⟨N, le_refl N⟩
  have ex : ∃ n ≥ N, u k < u n := exists_lt_of_tendsto_atTop hu _ _
  obtain ⟨n : ℕ, hnN : n ≥ N, hnk : u k < u n, hn_min : ∀ m, m < n → N ≤ m → u m ≤ u k⟩ :
      ∃ n ≥ N, u k < u n ∧ ∀ m, m < n → N ≤ m → u m ≤ u k := by
    rcases Nat.findX ex with ⟨n, ⟨hnN, hnk⟩, hn_min⟩
    push Not at hn_min
    exact ⟨n, hnN, hnk, hn_min⟩
  use n, hnN
  grind

/-- If `u` is a sequence which is unbounded above,
then it `Frequently` reaches a value strictly greater than all previous values.
-/
@[to_dual frequently_low_scores
/-- If `u` is a sequence which is unbounded below,
then it `Frequently` reaches a value strictly smaller than all previous values.
-/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant545544b41564ea0d246e148c836e7447720f9025d819da6b73dbbb8c9cd29030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant545544b41564ea0d246e148c836e7447720f9025d819da6b73dbbb8c9cd29030.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0554dba218c4f1b9e782bfd5d4ad9632f4481250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
