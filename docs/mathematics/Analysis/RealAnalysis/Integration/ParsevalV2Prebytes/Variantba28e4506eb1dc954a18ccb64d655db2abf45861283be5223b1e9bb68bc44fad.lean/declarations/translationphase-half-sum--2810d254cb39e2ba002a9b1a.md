# translationPhase_half_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88074ae7ae26c2e6e14aae9a877a92d6f425f95c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba28e4506eb1dc954a18ccb64d655db2abf45861283be5223b1e9bb68bc44fad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c122bc5-c237-3685-93d4-34ffc6fb89f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdee0593-5da4-fc97-5e9c-6f3cba8969e5",
  "kind": "theorem",
  "lexical_name": "translationPhase_half_sum",
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
  "slug": "translationphase-half-sum--2810d254cb39e2ba002a9b1a",
  "source": {
    "blob": "88074ae7ae26c2e6e14aae9a877a92d6f425f95c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variantba28e4506eb1dc954a18ccb64d655db2abf45861283be5223b1e9bb68bc44fad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2810d254cb39e2ba002a9b1a37f63dcf66072e33ee20232ab270c9ef6841f7e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variantba28e4506eb1dc954a18ccb64d655db2abf45861283be5223b1e9bb68bc44fad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdee0593-5da4-fc97-5e9c-6f3cba8969e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translationPhase_half_sum (s ξ : ℝ) :
    (1 / 2 : ℂ) * (translationPhase s ξ + translationPhase (-s) ξ) =
      (Real.cos (2 * Real.pi * ξ * s) : ℂ) := by
  have hn : 2 * Real.pi * (-s * ξ) = -(2 * Real.pi * ξ * s) := by ring
  have hp : 2 * Real.pi * (-(-s) * ξ) = 2 * Real.pi * ξ * s := by ring
  simp only [translationPhase, Real.fourierChar_apply, hn, hp, Complex.ofReal_neg]
  rw [add_comm, ← Complex.two_cos, ← Complex.ofReal_cos]
  ring

/-- The actual frequency CLM acts almost everywhere by its real cosine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variantba28e4506eb1dc954a18ccb64d655db2abf45861283be5223b1e9bb68bc44fad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variantba28e4506eb1dc954a18ccb64d655db2abf45861283be5223b1e9bb68bc44fad.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88074ae7ae26c2e6e14aae9a877a92d6f425f95c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
