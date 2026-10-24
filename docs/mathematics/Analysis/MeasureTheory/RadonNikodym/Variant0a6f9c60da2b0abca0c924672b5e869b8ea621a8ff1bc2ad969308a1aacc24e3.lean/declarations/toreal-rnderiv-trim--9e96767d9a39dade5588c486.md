# toReal_rnDeriv_trim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ec00def-829b-d3ea-b3dd-e6f6dbbd03e1",
  "kind": "lemma",
  "lexical_name": "toReal_rnDeriv_trim",
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
  "slug": "toreal-rnderiv-trim--9e96767d9a39dade5588c486",
  "source": {
    "blob": "8b3c6a58ba4356f58c0e290feab1bd44ab0995ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e96767d9a39dade5588c486af7c34e452fbfd0c37327b546fe02835682f9319",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec00def-829b-d3ea-b3dd-e6f6dbbd03e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toReal_rnDeriv_trim (hm : m ≤ m𝓧) [IsFiniteMeasure μ] [hsf : SigmaFinite (ν.trim hm)]
    (hμν : μ ≪ ν) :
    (fun x ↦ ((μ.trim hm).rnDeriv (ν.trim hm) x).toReal) =ᵐ[ν.trim hm]
      ν[fun x ↦ (μ.rnDeriv ν x).toReal | m] := by
  simp_rw [trim_eq_map hm]
  have : SigmaFinite (@Measure.map _ _ m𝓧 m id ν) := by rwa [← trim_eq_map hm]
  have h := toReal_rnDeriv_map_ae_eq_trim hμν (measurable_id'' hm)
  simp_rw [MeasurableSpace.comap_id, id_def, trim_eq_map] at h
  convert! h <;> rw [MeasurableSpace.comap_id]

/-- The Radon-Nikodym derivative `∂(μ.trim hm)/∂(ν.trim hm)` of the trimmed measures
(for `hm : m ≤ m0` stating that `m` is a sub-sigma-algebra of `m0`) is a.e.-equal to the
conditional expectation of `∂μ/∂ν` with respect to the sigma-algebra `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3c6a58ba4356f58c0e290feab1bd44ab0995ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
