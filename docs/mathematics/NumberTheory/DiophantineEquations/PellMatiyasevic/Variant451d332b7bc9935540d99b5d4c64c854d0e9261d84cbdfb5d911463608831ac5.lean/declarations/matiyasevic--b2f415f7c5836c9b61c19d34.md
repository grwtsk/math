# matiyasevic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad663df-881e-9c16-3ee0-35ea62dbbdd4",
  "kind": "theorem",
  "lexical_name": "matiyasevic",
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
  "slug": "matiyasevic--b2f415f7c5836c9b61c19d34",
  "source": {
    "blob": "7813d6e6a7d7267649a4a4f69801bfc5fea99d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 846,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f415f7c5836c9b61c19d34356e1a06cd3d2532c680b8b60ed0df214ecf98fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad663df-881e-9c16-3ee0-35ea62dbbdd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matiyasevic {a k x y} :
    (∃ a1 : 1 < a, xn a1 k = x ∧ yn a1 k = y) ↔
      1 < a ∧ k ≤ y ∧ (x = 1 ∧ y = 0 ∨
        ∃ u v s t b : ℕ,
          x * x - (a * a - 1) * y * y = 1 ∧ u * u - (a * a - 1) * v * v = 1 ∧
          s * s - (b * b - 1) * t * t = 1 ∧ 1 < b ∧ b ≡ 1 [MOD 4 * y] ∧
          b ≡ a [MOD u] ∧ 0 < v ∧ y * y ∣ v ∧ s ≡ x [MOD u] ∧ t ≡ k [MOD 4 * y]) :=
  ⟨fun ⟨a1, hx, hy⟩ => by
    rw [← hx, ← hy]
    refine' ⟨a1,
        (Nat.eq_zero_or_pos k).elim (fun k0 => by rw [k0]; exact ⟨le_rfl, Or.inl ⟨rfl, rfl⟩⟩)
          fun kpos => _⟩
    exact
      let x := xn a1 k
      let y := yn a1 k
      let m := 2 * (k * y)
      let u := xn a1 m
      let v := yn a1 m
      have ky : k ≤ y := yn_ge_n a1 k
      have yv : y * y ∣ v := (ysq_dvd_yy a1 k).trans <| (y_dvd_iff _ _ _).2 <| dvd_mul_left _ _
      have uco : Nat.coprime u (4 * y) :=
        have : 2 ∣ v :=
          modEq_zero_iff_dvd.1 <| (yn_modEq_two _ _).trans (dvd_mul_right _ _).modEq_zero_nat
        have : Nat.coprime u 2 := (xy_coprime a1 m).coprime_dvd_right this
        (this.mul_right this).mul_right <|
          (xy_coprime _ _).coprime_dvd_right (dvd_of_mul_left_dvd yv)
      let ⟨b, ba, bm1⟩ := chineseRemainder uco a 1
      have m1 : 1 < m :=
        have : 0 < k * y := mul_pos kpos (strictMono_y a1 kpos)
        Nat.mul_le_mul_left 2 this
      have vp : 0 < v := strictMono_y a1 (lt_trans zero_lt_one m1)
      have b1 : 1 < b :=
        have : xn a1 1 < u := strictMono_x a1 m1
        have : a < u := by simp at this; exact this
        lt_of_lt_of_le a1 <| by
          delta ModEq at ba; rw [Nat.mod_eq_of_lt this] at ba; rw [← ba]
          apply Nat.mod_le
      let s := xn b1 k
      let t := yn b1 k
      have sx : s ≡ x [MOD u] := (xy_modEq_of_modEq b1 a1 ba k).left
      have tk : t ≡ k [MOD 4 * y] :=
        have : 4 * y ∣ b - 1 :=
          Int.coe_nat_dvd.1 <| by rw [Int.ofNat_sub (le_of_lt b1)]; exact bm1.symm.dvd
        (yn_modEq_a_sub_one _ _).of_dvd this
      ⟨ky,
        Or.inr
          ⟨u, v, s, t, b, pell_eq _ _, pell_eq _ _, pell_eq _ _, b1, bm1, ba, vp, yv, sx, tk⟩⟩,
    fun ⟨a1, ky, o⟩ =>
    ⟨a1,
      match o with
      | Or.inl ⟨x1, y0⟩ => by
        rw [y0] at ky; rw [Nat.eq_zero_of_le_zero ky, x1, y0]; exact ⟨rfl, rfl⟩
      | Or.inr ⟨u, v, s, t, b, xy, uv, st, b1, rem⟩ =>
        match x, y, eq_pell a1 xy, u, v, eq_pell a1 uv, s, t, eq_pell b1 st, rem, ky with
        | _, _, ⟨i, rfl, rfl⟩, _, _, ⟨n, rfl, rfl⟩, _, _, ⟨j, rfl, rfl⟩,
          ⟨(bm1 : b ≡ 1 [MOD 4 * yn a1 i]), (ba : b ≡ a [MOD xn a1 n]), (vp : 0 < yn a1 n),
            (yv : yn a1 i * yn a1 i ∣ yn a1 n), (sx : xn b1 j ≡ xn a1 i [MOD xn a1 n]),
            (tk : yn b1 j ≡ k [MOD 4 * yn a1 i])⟩,
          (ky : k ≤ yn a1 i) =>
          (Nat.eq_zero_or_pos i).elim
            (fun i0 => by simp [i0] at ky; rw [i0, ky]; exact ⟨rfl, rfl⟩) fun ipos => by
            suffices i = k by rw [this]; exact ⟨rfl, rfl⟩
            clear o rem xy uv st
            have iln : i ≤ n :=
              le_of_not_gt fun hin =>
                not_lt_of_ge (Nat.le_of_dvd vp (dvd_of_mul_left_dvd yv)) (strictMono_y a1 hin)
            have yd : 4 * yn a1 i ∣ 4 * n := mul_dvd_mul_left _ <| dvd_of_ysq_dvd a1 yv
            have jk : j ≡ k [MOD 4 * yn a1 i] :=
              have : 4 * yn a1 i ∣ b - 1 :=
                Int.coe_nat_dvd.1 <| by rw [Int.ofNat_sub (le_of_lt b1)]; exact bm1.symm.dvd
              ((yn_modEq_a_sub_one b1 _).of_dvd this).symm.trans tk
            have ki : k + i < 4 * yn a1 i :=
              lt_of_le_of_lt (_root_.add_le_add ky (yn_ge_n a1 i)) <| by
                rw [← two_mul]
                exact Nat.mul_lt_mul_of_pos_right (by decide) (strictMono_y a1 ipos)
            have ji : j ≡ i [MOD 4 * n] :=
              have : xn a1 j ≡ xn a1 i [MOD xn a1 n] :=
                (xy_modEq_of_modEq b1 a1 ba j).left.symm.trans sx
              (modEq_of_xn_modEq a1 ipos iln this).resolve_right
                fun ji : j + i ≡ 0 [MOD 4 * n] =>
                not_le_of_gt ki <|
                  Nat.le_of_dvd (lt_of_lt_of_le ipos <| Nat.le_add_left _ _) <|
                    modEq_zero_iff_dvd.1 <| (jk.symm.add_right i).trans <| ji.of_dvd yd
            have : i % (4 * yn a1 i) = k % (4 * yn a1 i) := (ji.of_dvd yd).symm.trans jk
            rwa [Nat.mod_eq_of_lt (lt_of_le_of_lt (Nat.le_add_left _ _) ki),
              Nat.mod_eq_of_lt (lt_of_le_of_lt (Nat.le_add_right _ _) ki)] at this⟩⟩
#align pell.matiyasevic Pell.matiyasevic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7813d6e6a7d7267649a4a4f69801bfc5fea99d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
