# superlevel_above_one_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5242f05-815f-faf9-3567-af0b3f20267b",
  "kind": "theorem",
  "lexical_name": "superlevel_above_one_zero",
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
  "slug": "superlevel-above-one-zero--10bfc72027df9cea8bbc9021",
  "source": {
    "blob": "836d73fecf283c4b177d320ae708960790b07d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10bfc72027df9cea8bbc9021a67c99015947ad4f4654f57102be27614a2bd0d3",
  "verification": {
    "reference": "docs/verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5242f05-815f-faf9-3567-af0b3f20267b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superlevel_above_one_zero {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ}
    (hf1 : ∀ i ∈ s, f i ≤ 1) {t : ℝ} (ht : 1 < t) : superlevelMass s w f t = 0 := by
  apply Finset.sum_eq_zero
  intro i hi
  exact if_neg (by linarith [hf1 i hi] : ¬ t ≤ f i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836d73fecf283c4b177d320ae708960790b07d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
