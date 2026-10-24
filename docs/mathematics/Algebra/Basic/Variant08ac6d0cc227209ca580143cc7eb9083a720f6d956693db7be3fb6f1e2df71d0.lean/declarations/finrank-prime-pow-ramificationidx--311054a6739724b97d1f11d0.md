# finrank_prime_pow_ramificationIdx

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
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c5da359-f4eb-4ebe-4344-b4a6ba220319",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c99f9a4f-9e6f-e4c8-ca31-2f7b4fba70e0",
  "kind": "theorem",
  "lexical_name": "finrank_prime_pow_ramificationIdx",
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
  "slug": "finrank-prime-pow-ramificationidx--311054a6739724b97d1f11d0",
  "source": {
    "blob": "1d8bc311279ec33de014306a9b3912335ce2fbde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 485,
    "path": "GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:311054a6739724b97d1f11d033afeefcaa7984590c64e95f150131c1f6b1a1c2",
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

Occurrence: `result:c99f9a4f-9e6f-e4c8-ca31-2f7b4fba70e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_prime_pow_ramificationIdx [IsDedekindDomain S] (hP0 : P ≠ ⊥)
    [p.IsMaximal] [P.IsPrime] (he : e ≠ 0) :
    finrank (R ⧸ p) (S ⧸ P ^ e) =
      e *
        @finrank (R ⧸ p) (S ⧸ P) _ _
          (@Algebra.toModule _ _ _ _ <|
            @Quotient.algebraQuotientOfRamificationIdxNeZero _ _ _ _ _ _ _ ⟨he⟩) := by
  let : NeZero e := ⟨he⟩
  let : Algebra (R ⧸ p) (S ⧸ P) := Quotient.algebraQuotientOfRamificationIdxNeZero p P
  have hdim := rank_prime_pow_ramificationIdx _ _ hP0 he
  by_cases hP : FiniteDimensional (R ⧸ p) (S ⧸ P)
  · have := (finiteDimensional_iff_of_rank_eq_nsmul he hdim).mpr hP
    apply @Nat.cast_injective Cardinal
    rw [finrank_eq_rank', Nat.cast_mul, finrank_eq_rank', hdim, nsmul_eq_mul]
  have hPe := mt (finiteDimensional_iff_of_rank_eq_nsmul he hdim).mp hP
  simp only [finrank_of_infinite_dimensional hP, finrank_of_infinite_dimensional hPe,
    mul_zero]

end FactLeComap

section FactorsMap

/-! ## Properties of the factors of `p.map (algebraMap R S)` -/


variable [IsDedekindDomain S]

@[deprecated "Use results of RingTheory.RamificationInertia.Basic" (since := "2026-07-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8bc311279ec33de014306a9b3912335ce2fbde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
