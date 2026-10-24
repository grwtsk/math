# fourier_memLp_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a030cc5372fddf7e42980a2027b2600d851d0d59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d019ebe1-414a-f985-2432-d4890ce136ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2acd50bb-bf66-61f3-e042-c156b16bdd4a",
  "kind": "theorem",
  "lexical_name": "fourier_memLp_two",
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
  "slug": "fourier-memlp-two--6ba89ae3dec5804c56e6981d",
  "source": {
    "blob": "a030cc5372fddf7e42980a2027b2600d851d0d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 61,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba89ae3dec5804c56e6981ddbe88c8c4051539a5cc03a14398f6d86bf86f89d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2acd50bb-bf66-61f3-e042-c156b16bdd4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_memLp_two (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : MemLp (𝓕 f : ℝ → ℂ) 2 volume :=
  (Lp.memLp (𝓕 (hf2.toLp f))).ae_eq (fourier_ae_eq_L2 f hf1 hf2).symm

/-- The ordinary Fourier square has a genuine finite integral before Plancherel is applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a030cc5372fddf7e42980a2027b2600d851d0d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
