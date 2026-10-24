# actualFourierReduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43b10d5b-221e-804b-e9b6-52bb53a0b022",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a77739e8-0905-799d-f409-a072c1a6c385",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e91299b7-85b8-cb8c-1010-1b7f7d1f7d2b",
  "kind": "theorem",
  "lexical_name": "actualFourierReduction",
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
  "slug": "actualfourierreduction--6e948750d842257d1c638e55",
  "source": {
    "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 175,
    "path": "GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e948750d842257d1c638e55965fd74679a97c83a8e33e46958e63e225d1c0fe",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e91299b7-85b8-cb8c-1010-1b7f7d1f7d2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFourierReduction (P B : Finset ℕ) (T : ℝ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B) :
    FourierReduction P B T := by
  have hs := windowedSource_integrable P T hP
  have hsm := windowedSource_memLp P T hP
  have hb := blockWindow_integrable P B T hP hB
  have hbm := blockWindow_memLp P B T hP
  have hden := blockDensity_eq P B T hP hB
  constructor
  · rw [hden]
    exact rawFourier_square_integrable _ hb hbm
  · exact rawFourier_square_integrable _ hs hsm
  · exact (rawFourier_parseval _ hs hsm).trans (windowedSource_energy P T)
  · calc
      sourceEnergy (P ∪ B) T ≤ ∫ u, ‖blockWindow P B T u‖ ^ 2 :=
        Cutoff.actual_cutoff_complex_energy_bound P B T hP hB hd.symm
      _ = (2 * Real.pi)⁻¹ * ∫ ξ, ‖PPNC.rawFourier (blockWindow P B T) ξ‖ ^ 2 :=
        (rawFourier_parseval _ hb hbm).symm
      _ = _ := by rw [Charts.packetEnergy, hden]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `839c4f378e6f0d713b26006e0239b587ff0eebdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
