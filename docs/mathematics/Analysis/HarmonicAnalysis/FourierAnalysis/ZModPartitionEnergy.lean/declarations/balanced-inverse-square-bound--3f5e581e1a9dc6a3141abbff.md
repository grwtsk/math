# balanced_inverse_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76200a4c-563e-7f45-7f23-a206903242f0",
  "kind": "theorem",
  "lexical_name": "balanced_inverse_square_bound",
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
  "slug": "balanced-inverse-square-bound--3f5e581e1a9dc6a3141abbff",
  "source": {
    "blob": "3e1dd968c25aac5f9f2e7eeadf0332d7a3ae7afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5e581e1a9dc6a3141abbff0ce15a5a68da57d85dfe4bfce69e911c7df296bb",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76200a4c-563e-7f45-7f23-a206903242f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_inverse_square_bound (n m c : ℕ) (hm : 0 < m)
    (hfour : 4 * m ≤ n) (hc : c ≤ n / m + 1) (hpos : 0 < c) :
    (m : ℝ) ^ 2 / (2 * (n : ℝ) ^ 2) ≤ (c : ℝ)⁻¹ ^ 2 := by
  have hn : 0 < n := by omega
  have hnr : (0 : ℝ) < n := by exact_mod_cast hn
  have hcr : (0 : ℝ) < c := by exact_mod_cast hpos
  rw [inv_pow, ← one_div]
  exact (div_le_div_iff₀ (by positivity : 0 < 2 * (n : ℝ) ^ 2)
    (by positivity : 0 < (c : ℝ) ^ 2)).mpr (by simpa using balanced_size_square_bound n m c hm hfour hc)

open GRWTSK.ZModCharacterEnergy

variable {p : ℕ} [NeZero p] {m : ℕ}

/-- The energy of an actual finite part family, as in source (3.2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1dd968c25aac5f9f2e7eeadf0332d7a3ae7afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
