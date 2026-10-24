# sfPart_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5c78787-4160-099e-4f60-fa7771f74ce4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85856571-0ec2-3b48-8853-8f3910c9eb34",
  "kind": "lemma",
  "lexical_name": "sfPart_one_eq",
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
  "slug": "sfpart-one-eq--554133f7c8303a7c4d76ccee",
  "source": {
    "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554133f7c8303a7c4d76cceebf7698cc6b8eed4b539aadb4ac6572f440e91d41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85856571-0ec2-3b48-8853-8f3910c9eb34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sfPart_one_eq (Λs : ℂ) (y : ℝ) :
    sfPart Λs 1 y = primeLogPowSum 2 y - 2 * (Λs⁻¹).re * primeLogPowSum 3 y
      + (‖Λs‖ ^ 2)⁻¹ * primeLogPowSum 4 y := by
  unfold sfPart primeLogPowSum
  have hfilt : (Ioc 0 ⌊Real.exp y⌋₊).filter (fun N => Squarefree N ∧ ω N = 1)
      = (Ioc 0 ⌊Real.exp y⌋₊).filter Nat.Prime := by
    ext N
    simp only [Finset.mem_filter, squarefree_and_omega_one_iff]
  rw [hfilt, Finset.mul_sum, Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun p hp => ?_
  have hpr : p.Prime := (Finset.mem_filter.1 hp).2
  rw [xiCoeff_prime hpr Λs, norm_sq_prime_term, re_sq_add_im_sq_inv]
  have hp0 : (0:ℝ) < p := by exact_mod_cast hpr.pos
  field_simp

set_option maxHeartbeats 800000 in
/-- **The ω = 1 layer of H3**: `sfPart Λs 1 y = l²(s²/2 − 4s³/3 + s⁴) + O(1+l)`, `s = y/l`, uniformly in
`0 ≤ y ≤ l`, for every `Λs` with `Re Λs = l/2`, `|Im Λs| ≤ 1`, `l ≥ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5627e313051e182825d48bb489edc6d136a21ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
