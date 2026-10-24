# negativeSmoothMoment_eq_normalized_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5d50c8092868f8952615b2dba4dd3841367416d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:185a819c-9a7e-718b-a9c0-9b79b9c12061",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc5dc301-f8b0-77df-eb51-eae089798878",
  "kind": "theorem",
  "lexical_name": "negativeSmoothMoment_eq_normalized_energy",
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
  "slug": "negativesmoothmoment-eq-normalized-energy--5a9836c76a79c49cf2d1f7e3",
  "source": {
    "blob": "f5d50c8092868f8952615b2dba4dd3841367416d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a9836c76a79c49cf2d1f7e3e85bf7386f0eba83ba2094214c18fe41311d06fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc5dc301-f8b0-77df-eb51-eae089798878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSmoothMoment_eq_normalized_energy {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A =
      (131072/45045 : ℝ)/(2*A^2*sourceNormalization A) +
        (65536/109395 : ℝ)/(8*sourceNormalization A) := by
  rw [negativeSmoothMoment_eq_half_causal_energy hA, causalSourceTail_square_integral hA]
  ring

/-- Exact rational evaluation of the continuous half, without arithmetic assumptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d50c8092868f8952615b2dba4dd3841367416d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
