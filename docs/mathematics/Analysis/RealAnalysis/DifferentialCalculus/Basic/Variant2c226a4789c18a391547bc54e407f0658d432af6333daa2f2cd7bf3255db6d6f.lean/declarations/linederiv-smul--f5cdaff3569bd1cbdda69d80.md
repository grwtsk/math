# lineDeriv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d37ea780acdc430d4369638c1686294a623b7c81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 576,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfbdd5cc-b2ec-0101-4b1d-6946e43fb636",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a91611d-3415-f3c0-9e6a-a81b7d819336",
  "kind": "theorem",
  "lexical_name": "lineDeriv_smul",
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
  "slug": "linederiv-smul--f5cdaff3569bd1cbdda69d80",
  "source": {
    "blob": "d37ea780acdc430d4369638c1686294a623b7c81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 576,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5cdaff3569bd1cbdda69d80f947b40b54a07e98017a26ba07284cae68a380bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a91611d-3415-f3c0-9e6a-a81b7d819336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineDeriv_smul {c : 𝕜} : lineDeriv 𝕜 f x (c • v) = c • lineDeriv 𝕜 f x v := by
  rcases eq_or_ne c 0 with rfl | hc
  · simp [lineDeriv_zero]
  by_cases H : LineDifferentiableAt 𝕜 f x v
  · exact (H.hasLineDerivAt.smul c).lineDeriv
  · have H' : ¬ (LineDifferentiableAt 𝕜 f x (c • v)) := by
      simpa [lineDifferentiableAt_smul_iff hc] using H
    simp [lineDeriv_zero_of_not_lineDifferentiableAt, H, H']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37ea780acdc430d4369638c1686294a623b7c81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
