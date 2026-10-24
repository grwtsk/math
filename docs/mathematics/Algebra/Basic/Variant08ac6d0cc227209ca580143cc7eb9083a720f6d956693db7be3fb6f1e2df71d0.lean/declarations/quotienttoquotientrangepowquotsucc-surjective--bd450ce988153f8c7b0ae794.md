# quotientToQuotientRangePowQuotSucc_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d8bc311279ec33de014306a9b3912335ce2fbde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7963d91c-c757-19ea-1d19-1575a21b2e50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b9522df-43ce-187c-4259-a904a6f0ca23",
  "kind": "theorem",
  "lexical_name": "quotientToQuotientRangePowQuotSucc_surjective",
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
  "slug": "quotienttoquotientrangepowquotsucc-surjective--bd450ce988153f8c7b0ae794",
  "source": {
    "blob": "1d8bc311279ec33de014306a9b3912335ce2fbde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 399,
    "path": "GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd450ce988153f8c7b0ae794937885df90eaffaf24a26dee8c72e796a3e62652",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b9522df-43ce-187c-4259-a904a6f0ca23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientToQuotientRangePowQuotSucc_surjective [IsDedekindDomain S]
    (hP0 : P ≠ ⊥) [hP : P.IsPrime] {i : ℕ} (hi : i < e) {a : S} (a_mem : a ∈ P ^ i)
    (a_notMem : a ∉ P ^ (i + 1)) :
    Function.Surjective (quotientToQuotientRangePowQuotSucc p P a_mem) := by
  rintro ⟨⟨⟨x⟩, hx⟩⟩
  have Pe_le_Pi : P ^ e ≤ P ^ i := Ideal.pow_le_pow_right hi.le
  rw [Submodule.Quotient.quot_mk_eq_mk, Ideal.Quotient.mk_eq_mk, Ideal.mem_quotient_iff_mem_sup,
    sup_eq_left.mpr Pe_le_Pi] at hx
  suffices hx' : x ∈ Ideal.span {a} ⊔ P ^ (i + 1) by
    obtain ⟨y', hy', z, hz, rfl⟩ := Submodule.mem_sup.mp hx'
    obtain ⟨y, rfl⟩ := Ideal.mem_span_singleton.mp hy'
    refine ⟨Submodule.Quotient.mk y, ?_⟩
    simp only [Submodule.Quotient.quot_mk_eq_mk, quotientToQuotientRangePowQuotSucc_mk,
      Submodule.Quotient.eq, LinearMap.mem_range, Subtype.ext_iff,
      Submodule.coe_sub]
    refine ⟨⟨_, Ideal.mem_map_of_mem _ (Submodule.neg_mem _ hz)⟩, ?_⟩
    rw [powQuotSuccInclusion_apply_coe, Subtype.coe_mk, Ideal.Quotient.mk_eq_mk, map_add,
      sub_add_cancel_left, map_neg]
  rw [← Submodule.span_singleton_le_iff_mem, submodule_span_eq] at a_mem a_notMem
  have hspan0 : span {a} ≠ ⊥ := fun ha ↦ a_notMem (ha ▸ bot_le)
  rwa [sup_comm, irreducible_pow_sup hspan0 ((prime_iff_isPrime hP0).mpr hP).irreducible,
    count_normalizedFactors_eq a_mem a_notMem, min_eq_left i.le_succ]

/-- Quotienting `P^i / P^e` by its subspace `P^(i+1) ⧸ P^e` is
`R ⧸ p`-linearly isomorphic to `S ⧸ P`. -/
@[deprecated "Use results of RingTheory.RamificationInertia.Basic" (since := "2026-07-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8bc311279ec33de014306a9b3912335ce2fbde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
