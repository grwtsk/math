# MeasureTheory.Integrable.fourier_fourierInv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1e54ede8b12a60253f745cd0909fdb3278bb511",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffb59201-2aa4-dc0e-fe47-48dea3e36840",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb82dad4-72b5-2234-a386-3c1838e5ad4d",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.Integrable.fourier_fourierInv_eq",
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
  "slug": "measuretheory-integrable-fourier-fourierinv-eq--d0bcd173c7088dbce9e21543",
  "source": {
    "blob": "c1e54ede8b12a60253f745cd0909fdb3278bb511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0bcd173c7088dbce9e215439379b9c1d0d329abad10195bb549735b5c82a486",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb82dad4-72b5-2234-a386-3c1838e5ad4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.Integrable.fourier_fourierInv_eq
    (hf : Integrable f) (h'f : Integrable (𝓕 f)) {v : V}
    (hv : ContinuousAt f v) : 𝓕 (𝓕⁻ f) v = f v := by
  rw [fourierInv_comm]
  exact hf.fourierInv_fourier_eq h'f hv

/-- **Fourier inversion formula**: If a function `f` on a finite-dimensional real inner product
space is continuous, integrable, and its Fourier transform `𝓕 f` is also integrable,
then `𝓕 (𝓕⁻ f) = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e54ede8b12a60253f745cd0909fdb3278bb511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
