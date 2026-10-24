# rotation_even_fourier_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "000fed530f8b8930c81dd1ec0f58c91d4a847ec9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2afe29e4-68aa-f380-580f-827711becc86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed249eba-80e9-1e5c-0686-841f03301383",
  "kind": "theorem",
  "lexical_name": "rotation_even_fourier_coe_ae",
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
  "slug": "rotation-even-fourier-coe-ae--4ee01d41a4736844ddaafe8a",
  "source": {
    "blob": "000fed530f8b8930c81dd1ec0f58c91d4a847ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 319,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee01d41a4736844ddaafe8a0da360a04108391e209c6487ecdf5424931a40df",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed249eba-80e9-1e5c-0686-841f03301383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_even_fourier_coe_ae {q : ComplexL2} (hq : reflection q = q)
    (c s : ℝ) :
    ((𝓕 (rotationMap c s q) : ComplexL2) : ℝ → ℂ) =ᵐ[volume]
      fun ξ => ((c : ℂ)+(s : ℂ)*signSymbol ξ)*(𝓕 q : ComplexL2) ξ := by
  rw [rotationMap_apply,quarterTurn_even hq]
  rw [FourierTransform.fourier_add,FourierTransform.fourier_smul,
    FourierTransform.fourier_smul,FourierTransform.fourier_neg]
  filter_upwards [Lp.coeFn_add ((c : ℂ) • (𝓕 q : ComplexL2))
      ((s : ℂ) • -(𝓕 (angularSignDuality q) : ComplexL2)),
    Lp.coeFn_smul (c : ℂ) (𝓕 q : ComplexL2),
    Lp.coeFn_smul (s : ℂ) (-(𝓕 (angularSignDuality q) : ComplexL2)),
    Lp.coeFn_neg (𝓕 (angularSignDuality q) : ComplexL2),
    angular_duality_fourier_coe_ae q] with ξ ha hc hs hn ht
  rw [ha]
  simp only [Pi.add_apply]
  rw [hc,hs]
  simp only [Pi.smul_apply]
  rw [hn]
  simp only [Pi.neg_apply]
  rw [ht]
  simp only [smul_eq_mul]
  ring

/-- Frequency conversion exposes the literal source-angular c-s·sgn symbol off zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `000fed530f8b8930c81dd1ec0f58c91d4a847ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
