# lineDerivOp_fourier_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e626c83f68490fd8146d057a8ecca1f6863dfbc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46cd239c-067e-abb6-ed4a-b42672eacbcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:141b49fd-b9ae-f250-c434-9985b5e080fa",
  "kind": "theorem",
  "lexical_name": "lineDerivOp_fourier_eq",
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
  "slug": "linederivop-fourier-eq--2d4347a26722aaee3f353226",
  "source": {
    "blob": "e626c83f68490fd8146d057a8ecca1f6863dfbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d4347a26722aaee3f353226711c6e9a3e2cc0ae6cd1cc130d5e7ab630c2b78c",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:141b49fd-b9ae-f250-c434-9985b5e080fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineDerivOp_fourier_eq (f : 𝓢(V, E)) (m : V) :
    ∂_{m} (𝓕 f) = 𝓕 (-(2 * π * Complex.I) • smulLeftCLM E (inner ℝ · m) f) := by
  change SchwartzMap.evalCLM ℝ V E m (fderivCLM ℝ V E (𝓕 f)) = _
  rw [fderivCLM_fourier_eq, ← fourier_evalCLM_eq]
  congr
  ext
  have : (inner ℝ · m).HasTemperateGrowth := ((innerSL ℝ).flip m).hasTemperateGrowth
  simp [this, innerSL_apply_apply ℝ]

/-- The Fourier transform of line derivative in direction `m` is given by multiplication of
`(2 * π * Complex.I) • (inner ℝ · m)` with the Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e626c83f68490fd8146d057a8ecca1f6863dfbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
