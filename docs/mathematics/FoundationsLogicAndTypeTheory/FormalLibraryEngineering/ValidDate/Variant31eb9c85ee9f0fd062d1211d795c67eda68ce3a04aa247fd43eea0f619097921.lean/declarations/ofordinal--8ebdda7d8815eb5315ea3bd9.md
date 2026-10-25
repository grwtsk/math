# ofOrdinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cacd3aa543ffc63925cd2e57cc031c7563cf051a5b3265dd16d27df15bbfa5e",
  "kind": "def",
  "lexical_name": "ofOrdinal",
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
  "slug": "ofordinal--8ebdda7d8815eb5315ea3bd9",
  "source": {
    "blob": "70772142dc5037cb0f64e3da2f3a1d5cd40f51eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValidDate/Variant31eb9c85ee9f0fd062d1211d795c67eda68ce3a04aa247fd43eea0f619097921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ebdda7d8815eb5315ea3bd9c0187ace8739636149501caa9dadcf3fae68051f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValidDate/Variant31eb9c85ee9f0fd062d1211d795c67eda68ce3a04aa247fd43eea0f619097921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cacd3aa543ffc63925cd2e57cc031c7563cf051a5b3265dd16d27df15bbfa5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofOrdinal (ordinal : Day.Ordinal.OfYear leap) : ValidDate leap :=
    let rec go (idx : Month.Ordinal) (acc : Int) (h : ordinal.val > acc) (p : acc = (cumulativeDays leap idx).val) : ValidDate leap :=
      let monthDays := days leap idx
      if h₁ : ordinal.val ≤ acc + monthDays.val then
        let bounded := Bounded.LE.mk ordinal.val (And.intro h h₁) |>.sub acc
        let bounded : Bounded.LE 1 monthDays.val := bounded.cast (by omega) (by omega)
        let days₁ : Day.Ordinal := ⟨bounded.val, And.intro bounded.property.left (Int.le_trans bounded.property.right monthDays.property.right)⟩
        ⟨⟨idx, days₁⟩, Int.le_trans bounded.property.right (by simp +zetaDelta)⟩
      else by
        let h₂ := Int.not_le.mp h₁

        have h₃ : idx.val < 12 := Int.not_le.mp <| λh₃ => by
          have h₅ := ordinal.property.right
          let eq := Int.eq_iff_le_and_ge.mpr (And.intro idx.property.right h₃)
          simp [monthDays, days, eq] at h₂
          simp [cumulativeDays, eq] at p
          simp [p] at h₂
          cases leap
          all_goals (simp at h₂; simp_all)
          · have h₂ : 365 < ordinal.val := h₂
            omega
          · have h₂ : 366 < ordinal.val := h₂
            omega

        let idx₂ := idx.truncateTop (Int.le_sub_one_of_lt h₃) |>.addTop 1 (by decide)
        refine go idx₂ (acc + monthDays.val) h₂ ?_
        simp [monthDays, p]
        rw [difference_eq (Int.le_of_lt_add_one h₃)]

      termination_by 12 - idx.val.toNat
      decreasing_by
        simp_wf
        simp [Bounded.LE.addTop]
        let gt0 : idx.val ≥ 0 := Int.le_trans (by decide) idx.property.left
        refine Nat.sub_lt_sub_left (Int.toNat_lt gt0 |>.mpr h₃) ?_
        let toNat_lt_lt {n z : Int} (h : 0 ≤ z) (h₁ : 0 ≤ n) : z.toNat < n.toNat ↔ z < n := by
          rw [← Int.not_le, ← Nat.not_le, ← Int.ofNat_le, Int.toNat_of_nonneg h, Int.toNat_of_nonneg h₁]
        rw [toNat_lt_lt (by omega) (by omega)]
        omega

    go 1 0 (Int.le_trans (by decide) ordinal.property.left) (by cases leap <;> decide)

end ValidDate
end Time
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValidDate/Variant31eb9c85ee9f0fd062d1211d795c67eda68ce3a04aa247fd43eea0f619097921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValidDate/Variant31eb9c85ee9f0fd062d1211d795c67eda68ce3a04aa247fd43eea0f619097921.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70772142dc5037cb0f64e3da2f3a1d5cd40f51eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
