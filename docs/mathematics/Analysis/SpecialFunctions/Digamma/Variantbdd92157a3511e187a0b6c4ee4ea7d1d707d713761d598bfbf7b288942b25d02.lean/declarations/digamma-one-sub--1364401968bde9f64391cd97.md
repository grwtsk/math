# digamma_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a13afbf72c57f912beea85d5325ca7da3e66ed1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f10304e-cf65-329f-3281-d797a9c14711",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b0d772e-0f3b-3cd1-6ada-4087abf3e851",
  "kind": "theorem",
  "lexical_name": "digamma_one_sub",
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
  "slug": "digamma-one-sub--1364401968bde9f64391cd97",
  "source": {
    "blob": "7a13afbf72c57f912beea85d5325ca7da3e66ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 94,
    "path": "GRWTSK/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1364401968bde9f64391cd97a10745b9df4ef2503cf7769a48f4b24bbffe9f33",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0d772e-0f3b-3cd1-6ada-4087abf3e851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digamma_one_sub {s : ℂ} (hs : ∀ n : ℤ, s ≠ n) :
    digamma (1 - s) = digamma s + π * cot (π * s) := by
  -- The idea is to apply `logDeriv` to both sides of `Gamma_mul_Gamma_one_sub`. This produces
  -- side conditions, which the two `have`s below allow the `<;> try ...` line to discharge.
  have (m : ℕ) : s ≠ -m := by simpa using hs (-m)
  have (m : ℕ) : 1 - s ≠ -m := fun _ ↦ hs (1 + m) (by push_cast; grind)
  have := congr(logDeriv $(funext Gamma_mul_Gamma_one_sub) s)
  rw [logDeriv_fun_mul, logDeriv_fun_div, ← Function.comp_def Gamma, ← Function.comp_def sin,
    logDeriv_comp, logDeriv_comp] at this <;>
    try first | fun_prop | grind [sin_eq_zero_iff, ofReal_ne_zero, Real.pi_ne_zero]
  simp [digamma_def] at this ⊢
  grind

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a13afbf72c57f912beea85d5325ca7da3e66ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
