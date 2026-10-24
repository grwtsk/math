# Mform_mu_PX_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b91d8da0f439e5f83a78f1470e7f57f02cb779c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57f322f4-c9fc-e255-04aa-96519a18f4d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfdce58a-8183-8774-baad-a4dea5de7dc5",
  "kind": "lemma",
  "lexical_name": "Mform_mu_PX_eq",
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
  "slug": "mform-mu-px-eq--9973ce92c0a7bf09d8edb41a",
  "source": {
    "blob": "b91d8da0f439e5f83a78f1470e7f57f02cb779c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9973ce92c0a7bf09d8edb41a0b2cb2762bae10454acb72c7748d2ba9453fdab1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfdce58a-8183-8774-baad-a4dea5de7dc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_mu_PX_eq {p : Setting} {F : LocalFun} (hΦ : Continuous F.Phi) (hμ : Continuous Zeta23.mu) :
    Mform F.Phi p.T Zeta23.mu (Zeta23.PX p.X)
      = ∑ n ∈ primeRange p.X, (-(1 / Real.pi) * acoef n)
          * Mform F.Phi p.T Zeta23.mu (fun t => Real.cos (t * ycoef n)) := by
  unfold Mform
  have h1 : (fun q : ℝ × ℝ => F.Phi (q.1 - q.2) ^ 2 * Zeta23.mu q.1 * Zeta23.PX p.X q.2)
      = fun q => ∑ n ∈ primeRange p.X, (-(1 / Real.pi) * acoef n)
          * (F.Phi (q.1 - q.2) ^ 2 * Zeta23.mu q.1 * Real.cos (q.2 * ycoef n)) := by
    funext q
    rw [PX_eq, Finset.mul_sum, Finset.mul_sum]
    exact Finset.sum_congr rfl fun n _ => by ring
  rw [h1, integral_finsetSum]
  · refine Finset.sum_congr rfl fun n _ => ?_
    rw [integral_const_mul]
  · intro n _
    have hv : Continuous fun t : ℝ => Real.cos (t * ycoef n) := by fun_prop
    have := (Mform_integrableOn (T := p.T) hΦ hμ hv).const_mul (-(1 / Real.pi) * acoef n)
    simpa only using this

/-- **[prop:cross] (i)** (§5.4): `𝓜[μ,P_X] ≪ l√X`, stated in the `∃ C, EventuallyAtCore cϱ lam …`
form used by the results of `PrimeSideA.lean` (which imports this file). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91d8da0f439e5f83a78f1470e7f57f02cb779c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
