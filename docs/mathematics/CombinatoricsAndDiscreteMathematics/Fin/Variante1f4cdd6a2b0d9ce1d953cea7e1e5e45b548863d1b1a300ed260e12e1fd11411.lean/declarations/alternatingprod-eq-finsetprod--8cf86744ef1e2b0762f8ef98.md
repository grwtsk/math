# alternatingProd_eq_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dd60bf2-8de0-0a2f-7ea4-e8b0ac170ca9",
  "kind": "theorem",
  "lexical_name": "alternatingProd_eq_finsetProd",
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
  "slug": "alternatingprod-eq-finsetprod--8cf86744ef1e2b0762f8ef98",
  "source": {
    "blob": "6fac3f96868091dc6b64672c4eea44ad31cc883b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 765,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf86744ef1e2b0762f8ef98eed540821df060350817c7a27a806eab799d4ad7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dd60bf2-8de0-0a2f-7ea4-e8b0ac170ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alternatingProd_eq_finsetProd {G : Type*} [DivisionCommMonoid G] :
    ∀ (L : List G), alternatingProd L = ∏ i : Fin L.length, L[i] ^ (-1 : ℤ) ^ (i : ℕ)
  | [] => by
    rw [alternatingProd, Finset.prod_eq_one]
    rintro ⟨i, ⟨⟩⟩
  | g::[] => by
    change g = ∏ i : Fin 1, [g][i] ^ (-1 : ℤ) ^ (i : ℕ)
    rw [Fin.prod_univ_succ]; simp
  | g::h::L =>
    calc g * h⁻¹ * L.alternatingProd
      = g * h⁻¹ * ∏ i : Fin L.length, L[i] ^ (-1 : ℤ) ^ (i : ℕ) :=
        congr_arg _ (alternatingProd_eq_finsetProd _)
    _ = ∏ i : Fin (L.length + 2), (g::h::L)[i] ^ (-1 : ℤ) ^ (i : ℕ) := by
        { rw [Fin.prod_univ_succ, Fin.prod_univ_succ, mul_assoc]
          simp [pow_add]}

@[deprecated (since := "2026-04-08")]
alias alternatingSum_eq_finset_sum := alternatingSum_eq_finsetSum

@[to_additive existing, deprecated (since := "2026-04-08")]
alias alternatingProd_eq_finset_prod := alternatingProd_eq_finsetProd

end List

/-- This is a classic "telescoping sum" lemma. It says:
`r₀ - (r₀ + r₁) + (r₁ + r₂) - (r₂+ r₃) + ⋯ ± (rₙ₋₁ + rₙ) ∓ rₙ = 0`.

The chosen spelling, which gives definitional power over `d`, is influenced by downstream
applications such as `Module.sum_neg_one_pow_finrank_eq_zero_of_exact`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fac3f96868091dc6b64672c4eea44ad31cc883b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
