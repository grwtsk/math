# isBigO_norm_restrict_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d7184c603604e4d534fac30fa5c00f2abd91ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07928a46-9f80-b291-775d-aa3793eafb03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e02ee064-ab29-e517-ce13-1dd253ba881b",
  "kind": "theorem",
  "lexical_name": "isBigO_norm_restrict_cocompact",
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
  "slug": "isbigo-norm-restrict-cocompact--68a9a06c36a1ce3b895d2a26",
  "source": {
    "blob": "67d7184c603604e4d534fac30fa5c00f2abd91ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 172,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a9a06c36a1ce3b895d2a26cf20ecdde3dad69e4c1316945826dbe5de4b690a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e02ee064-ab29-e517-ce13-1dd253ba881b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_norm_restrict_cocompact (f : C(ℝ, E)) {b : ℝ} (hb : 0 < b)
    (hf : f =O[cocompact ℝ] fun x : ℝ => |x| ^ (-b)) (K : Compacts ℝ) :
    (fun x => ‖(f.comp (ContinuousMap.addRight x)).restrict K‖) =O[cocompact ℝ] (|·| ^ (-b)) := by
  obtain ⟨r, hr⟩ := K.isCompact.isBounded.subset_closedBall 0
  rw [closedBall_eq_Icc, zero_add, zero_sub] at hr
  have : ∀ x : ℝ,
      ‖(f.comp (ContinuousMap.addRight x)).restrict K‖ ≤ ‖f.restrict (Icc (x - r) (x + r))‖ := by
    intro x
    rw [ContinuousMap.norm_le _ (norm_nonneg _)]
    rintro ⟨y, hy⟩
    refine (le_of_eq ?_).trans (ContinuousMap.norm_coe_le_norm _ ⟨y + x, ?_⟩)
    · simp_rw [ContinuousMap.restrict_apply, ContinuousMap.comp_apply, ContinuousMap.coe_addRight]
    · exact ⟨by linarith [(hr hy).1], by linarith [(hr hy).2]⟩
  simp_rw [cocompact_eq_atBot_atTop, isBigO_sup] at hf ⊢
  constructor
  · refine (isBigO_of_le atBot ?_).trans (isBigO_norm_Icc_restrict_atBot hb hf.1 (-r) r)
    simp_rw [norm_norm]; exact this
  · refine (isBigO_of_le atTop ?_).trans (isBigO_norm_Icc_restrict_atTop hb hf.2 (-r) r)
    simp_rw [norm_norm]; exact this

/-- **Poisson's summation formula**, assuming that `f` decays as
`|x| ^ (-b)` for some `1 < b` and its Fourier transform is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d7184c603604e4d534fac30fa5c00f2abd91ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
