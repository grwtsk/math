# fourier_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94b3cf73f380430cb5cb0064f607526d4e12118c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e66941c-3e75-fc6d-4429-f10eb8fe3b5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70ab83fd-b6e9-d569-94fa-c23be9a1ea6b",
  "kind": "theorem",
  "lexical_name": "fourier_sub",
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
  "slug": "fourier-sub--efc482724e4b6cae8d9467ef",
  "source": {
    "blob": "94b3cf73f380430cb5cb0064f607526d4e12118c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efc482724e4b6cae8d9467ef9c5f97b90a8f16d9fa9c2a8d4f4902c6b2ded363",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ab83fd-b6e9-d569-94fa-c23be9a1ea6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_sub (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) (ξ : ℝ) :
    𝓕 (fun x => f x - g x) ξ = 𝓕 f ξ - 𝓕 g ξ := by
  have hi (u : ℝ → ℂ) (hu : Integrable u) :
      Integrable (fun x : ℝ => Complex.exp ((-2 * Real.pi * x * ξ : ℝ) * Complex.I) •
        u x) := by
    apply hu.norm.mono' ?_ ?_
    · exact ((by fun_prop : Continuous (fun x : ℝ =>
          Complex.exp ((-2 * Real.pi * x * ξ : ℝ) * Complex.I))).aestronglyMeasurable.smul
        hu.aestronglyMeasurable)
    · filter_upwards [] with x
      simp [Complex.norm_exp]
  simp only [Real.fourier_real_eq_integral_exp_smul]
  simp_rw [smul_sub]
  exact integral_sub (hi f hf) (hi g hg)

/-- An integrable input has a continuous genuine forward Fourier integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b3cf73f380430cb5cb0064f607526d4e12118c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
