# rothNumberNat_le_ruzsaSzemerediNumberNat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d6dd2fc-38dc-1318-213b-10897388022e",
  "kind": "theorem",
  "lexical_name": "rothNumberNat_le_ruzsaSzemerediNumberNat'",
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
  "slug": "rothnumbernat-le-ruzsaszemeredinumbernat--0a50a97e316c715bc7c2b21f",
  "source": {
    "blob": "a3a358dc7d64232bcbeb192479856a0440e107ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a50a97e316c715bc7c2b21f3be835a98e665514b9d13888340ff1cccdaaef01",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d6dd2fc-38dc-1318-213b-10897388022e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rothNumberNat_le_ruzsaSzemerediNumberNat' :
    ∀ n : ℕ, (n / 3 - 2 : ℝ) * rothNumberNat ((n - 3) / 6) ≤ ruzsaSzemerediNumberNat n
  | 0 => by simp
  | 1 => by simp
  | 2 => by simp
  | n + 3 => by
    calc
      _ ≤ (↑(2 * (n / 6) + 1) : ℝ) * rothNumberNat (n / 6) :=
        mul_le_mul_of_nonneg_right ?_ (Nat.cast_nonneg _)
      _ ≤ (ruzsaSzemerediNumberNat (6 * (n / 6) + 3) : ℝ) := ?_
      _ ≤ _ := by grw [Nat.mul_div_le]
    · simp only [cast_add, cast_ofNat, cast_mul, cast_one, tsub_le_iff_right]
      rw [← div_add_one (three_ne_zero' ℝ), ← le_sub_iff_add_le, div_le_iff₀ (zero_lt_three' ℝ),
        add_assoc, add_sub_assoc, add_mul, mul_right_comm, add_sub_cancel_left]
      norm_cast
      rw [← mul_add_one]
      exact (Nat.lt_mul_div_succ _ <| by simp).le
    · norm_cast
      exact rothNumberNat_le_ruzsaSzemerediNumberNat _

/-- Explicit lower bound on the **Ruzsa-Szemerédi problem**.

There exists a graph with `n` vertices and
`(n / 3 - 2) * (n - 3) / 6 * exp (-4 * √(log ((n - 3) / 6)))` edges such that each edge belongs
to exactly one triangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a358dc7d64232bcbeb192479856a0440e107ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
