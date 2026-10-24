# fourierCoeffOn_of_hasDerivAt_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9e1b3177cb0fc23ad80e9ea4869b0116ea8b9cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06f1fbb4-b354-6afe-9352-717d7d5045f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f71e26fb-1cee-9df2-9cd5-26327a1bddba",
  "kind": "theorem",
  "lexical_name": "fourierCoeffOn_of_hasDerivAt_Ioo",
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
  "slug": "fouriercoeffon-of-hasderivat-ioo--556509b9c892125b5062b136",
  "source": {
    "blob": "b9e1b3177cb0fc23ad80e9ea4869b0116ea8b9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 494,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:556509b9c892125b5062b136551a1bf2c563332edef8c9409c23c126fcbcabdd",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f71e26fb-1cee-9df2-9cd5-26327a1bddba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierCoeffOn_of_hasDerivAt_Ioo {a b : ℝ} (hab : a < b) {f f' : ℝ → ℂ}
    {n : ℤ} (hn : n ≠ 0)
    (hf : ContinuousOn f [[a, b]])
    (hff' : ∀ x, x ∈ Ioo (min a b) (max a b) → HasDerivAt f (f' x) x)
    (hf' : IntervalIntegrable f' volume a b) :
    fourierCoeffOn hab f n = 1 / (-2 * π * I * n) *
      (fourier (-n) (a : AddCircle (b - a)) * (f b - f a) - (b - a) * fourierCoeffOn hab f' n) :=
  fourierCoeffOn_of_hasDeriv_right hab hn hf (fun x hx ↦ hff' x hx |>.hasDerivWithinAt) hf'

/-- Express Fourier coefficients of `f` on an interval in terms of those of its derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e1b3177cb0fc23ad80e9ea4869b0116ea8b9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
