# coeff_bdd_of_roots_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bc459b6-adc6-1af5-3b27-a13db5d6094d",
  "kind": "theorem",
  "lexical_name": "coeff_bdd_of_roots_le",
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
  "slug": "coeff-bdd-of-roots-le--5d20e547c9becf970b207980",
  "source": {
    "blob": "ff7cc5c14f3429a3badd33da6317ab0f01cb295d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 190,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d20e547c9becf970b207980456f01042163bf86e8c6d1be451eb545e0cfe9d7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc459b6-adc6-1af5-3b27-a13db5d6094d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_bdd_of_roots_le {B : ℝ} {d : ℕ} (f : F →+* K) {p : F[X]} (h1 : p.Monic)
    (h2 : Splits f p) (h3 : p.natDegree ≤ d) (h4 : ∀ z ∈ (map f p).roots, ‖z‖ ≤ B) (i : ℕ) :
    ‖(map f p).coeff i‖ ≤ max B 1 ^ d * d.choose (d / 2) := by
  obtain hB | hB := le_or_lt 0 B
  · apply (coeff_le_of_roots_le i h1 h2 h4).trans
    calc
      _ ≤ max B 1 ^ (p.natDegree - i) * p.natDegree.choose i := by gcongr; apply le_max_left
      _ ≤ max B 1 ^ d * p.natDegree.choose i := by
        gcongr
        · apply le_max_right
        · exact le_trans (Nat.sub_le _ _) h3
      _ ≤ max B 1 ^ d * d.choose (d / 2) := by
        gcongr; exact (i.choose_mono h3).trans (i.choose_le_middle d)
  · rw [eq_one_of_roots_le hB h1 h2 h4, Polynomial.map_one, coeff_one]
    refine le_trans ?_ (one_le_mul_of_one_le_of_one_le (one_le_pow₀ (le_max_right B 1)) ?_)
    · split_ifs <;> norm_num
    · exact mod_cast Nat.succ_le_iff.mpr (Nat.choose_pos (d.div_le_self 2))

end Roots

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7cc5c14f3429a3badd33da6317ab0f01cb295d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
