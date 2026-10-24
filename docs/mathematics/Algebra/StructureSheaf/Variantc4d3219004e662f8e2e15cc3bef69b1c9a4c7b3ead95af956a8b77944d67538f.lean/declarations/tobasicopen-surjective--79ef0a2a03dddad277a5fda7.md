# toBasicOpenₗ_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c65a08a-a517-a8c4-766b-bfea8566bca7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1fe052a-dc13-7f31-24de-8d8d67de1f47",
  "kind": "theorem",
  "lexical_name": "toBasicOpenₗ_surjective",
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
  "slug": "tobasicopen-surjective--79ef0a2a03dddad277a5fda7",
  "source": {
    "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 488,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ef0a2a03dddad277a5fda7778f563a21a96ea014f17c583e598cd20fc6eeba",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1fe052a-dc13-7f31-24de-8d8d67de1f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBasicOpenₗ_surjective (f : R) : Function.Surjective (toBasicOpenₗ R M f) := by
  intro s
  obtain ⟨ι, _, a, b, ibU, iU, hab, H⟩ := exists_le_iSup_basicOpen_and_smul_eq_smul_and_eq_const _
    (PrimeSpectrum.isCompact_basicOpen _) s
  obtain ⟨n, hn⟩ : f ∈ (Ideal.span (Set.range b)).radical := by
    have : PrimeSpectrum.zeroLocus (Set.range b) ⊆ PrimeSpectrum.zeroLocus {f} := by
      simpa [← SetLike.coe_subset_coe, ← Set.compl_iInter,
        ← PrimeSpectrum.zeroLocus_iUnion, PrimeSpectrum.Top] using iU
    rw [← PrimeSpectrum.vanishingIdeal_zeroLocus_eq_radical, PrimeSpectrum.zeroLocus_span,
      PrimeSpectrum.mem_vanishingIdeal]
    exact fun x hx ↦ by simpa using this hx
  replace hn := Ideal.mul_mem_right f _ hn
  rw [← pow_succ, Ideal.span, Finsupp.mem_span_range_iff_exists_finsupp] at hn
  obtain ⟨c, hc⟩ := hn
  rw [Finsupp.sum_fintype _ _ (by simp)] at hc
  refine ⟨LocalizedModule.mk (∑ i, c i • a i) ⟨f ^ (n + 1), _, rfl⟩, ?_⟩
  refine (structureSheafInType R M).eq_of_locally_eq' (fun i ↦ basicOpen (b i)) _
    (fun i ↦ (ibU _).hom) iU _ _ fun i ↦ (Subtype.ext (funext fun x ↦ ?_)).trans (H _).symm
  rw [toBasicOpenₗ_mk]
  refine LocalizedModule.mk_eq.mpr ⟨1, ?_⟩
  simp_rw [one_smul, Finset.smul_sum, Submonoid.smul_def, smul_comm (b i), hab _ i, ← smul_assoc,
    ← Finset.sum_smul, hc]

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
