# compensatedReadout_hasDerivAt_of_cancelled_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "016931a51027ffd12444349cb66c690eaaf5d594",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7860b70-e832-5c13-cf1e-e90ac301c0dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0ded5e7-839a-061f-255f-efebbce04c03",
  "kind": "theorem",
  "lexical_name": "compensatedReadout_hasDerivAt_of_cancelled_work",
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
  "slug": "compensatedreadout-hasderivat-of-cancelled-work--09ebf9227fd32f15c94ebe4d",
  "source": {
    "blob": "016931a51027ffd12444349cb66c690eaaf5d594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ebf9227fd32f15c94ebe4d02472df30f287d673c7dabaf146fa49f416d407a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ded5e7-839a-061f-255f-efebbce04c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedReadout_hasDerivAt_of_cancelled_work [CompleteSpace H]
    (z : ℝ → H) (K : ℝ → H →L[ℂ] H) (c : ℝ → ℝ)
    (a : ℝ) (Ω Kprime : H →L[ℂ] H) (f : H) (cprime : ℝ)
    (hz : HasDerivAt z (Ω (z a) + f) a) (hK : HasDerivAt K Kprime a)
    (hc : HasDerivAt c cprime a) (hKs : IsSelfAdjoint (K a))
    (hΩ : Ω.adjoint = -Ω) (hcancel : Kprime + observableCommutator (K a) Ω = 0) :
    HasDerivAt (fun s => compensatedReadout (K s) (z s) (c s))
      (2 * (⟪z a, K a f⟫_ℂ).re + cprime) a := by
  have h := compensatedReadout_hasDerivAt_of_skew z K c a Ω Kprime f cprime
    hz hK hc hKs hΩ
  simpa only [hcancel, quadraticReadout, zero_apply,
    inner_zero_right, Complex.zero_re, zero_add] using h

/-- The generic signature observable distinguishes the two norm-square channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016931a51027ffd12444349cb66c690eaaf5d594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
