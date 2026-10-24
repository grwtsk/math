# subtype_fixedSize_eq_subsetSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dec4f0f6-d6f9-6c2b-ed5c-b76ec9b65c44",
  "kind": "theorem",
  "lexical_name": "subtype_fixedSize_eq_subsetSum",
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
  "slug": "subtype-fixedsize-eq-subsetsum--21dac7f68ef999c61772a477",
  "source": {
    "blob": "674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 153,
    "path": "GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21dac7f68ef999c61772a4779bfd22e837590fa12c39192e0285b10da56e6a70",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dec4f0f6-d6f9-6c2b-ed5c-b76ec9b65c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtype_fixedSize_eq_subsetSum (S : Finset (ZMod p)) (z : ZMod p) :
    ((((Finset.univ : Finset S).powersetCard m).filter
      (fun R : Finset S => ∑ a ∈ R, (a : ZMod p) = z)).card : ℝ) /
        (((Finset.univ : Finset S).powersetCard m).card : ℝ) =
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) := by
  classical
  have hmap : (Finset.univ : Finset S).map (residueEmbedding S) = S := by
    ext x
    simp [residueEmbedding]
  have hp := Finset.powersetCard_map (residueEmbedding S) m (Finset.univ : Finset S)
  rw [hmap] at hp
  have hf : GRWTSK.ZModSubsetSum.subsetSumFiber S m z =
      (((Finset.univ : Finset S).powersetCard m).filter
        (fun R : Finset S => ∑ a ∈ R, (a : ZMod p) = z)).map
          (Finset.mapEmbedding (residueEmbedding S)).toEmbedding := by
    unfold GRWTSK.ZModSubsetSum.subsetSumFiber
    rw [hp, Finset.filter_map]
    congr 1
    ext R
    rw [Finset.mem_filter, Finset.mem_filter]
    change (R ∈ (Finset.univ : Finset S).powersetCard m ∧
      (∑ x ∈ R.map (residueEmbedding S), x) = z) ↔
      (R ∈ (Finset.univ : Finset S).powersetCard m ∧ (∑ a ∈ R, (a : ZMod p)) = z)
    rw [Finset.sum_map]
    rfl
  unfold GRWTSK.ZModSubsetSum.subsetSumProbability
  push_cast
  rw [hf, hp, Finset.card_map, Finset.card_map]

/-- All actual balanced ordered partitions of the given residue set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
