# dyadic_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f6e3453-3a26-54a4-ee29-dbf6d39ac32e",
  "kind": "theorem",
  "lexical_name": "dyadic_cover",
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
  "slug": "dyadic-cover--75e820ea843f0ff98c1db979",
  "source": {
    "blob": "30e10c1400fdf96404308eab4533eef097c9d33d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75e820ea843f0ff98c1db979bb19b8239ac4f64c1787ccc00019de95886dfcc0",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f6e3453-3a26-54a4-ee29-dbf6d39ac32e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_cover (v : ℝ) (L : ℕ) (hu : v < 2 ^ (L + 1)) :
    v < 1 ∨ ∃ k ∈ Finset.range (L + 1), (2 : ℝ) ^ k ≤ v ∧ v < 2 ^ (k + 1) := by
  induction L with
  | zero =>
      by_cases hv : v < 1
      · exact Or.inl hv
      · exact Or.inr ⟨0, by simp, by simpa using le_of_not_gt hv, by simpa using hu⟩
  | succ L ih =>
      by_cases hv : v < 2 ^ (L + 1)
      · rcases ih hv with hl | ⟨k, hk, hlo, hhi⟩
        · exact Or.inl hl
        · exact Or.inr ⟨k, Finset.mem_range.mpr (by have := Finset.mem_range.mp hk; omega), hlo, hhi⟩
      · exact Or.inr ⟨L + 1, by simp, le_of_not_gt hv, hu⟩

/-- The exponential contribution of every low-energy point is at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e10c1400fdf96404308eab4533eef097c9d33d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
