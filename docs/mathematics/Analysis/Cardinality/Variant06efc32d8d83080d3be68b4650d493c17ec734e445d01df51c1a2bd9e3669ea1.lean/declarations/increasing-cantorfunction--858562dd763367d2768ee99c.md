# increasing_cantorFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d75032a-b4b8-6cba-dbd4-17916f12d440",
  "kind": "theorem",
  "lexical_name": "increasing_cantorFunction",
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
  "slug": "increasing-cantorfunction--858562dd763367d2768ee99c",
  "source": {
    "blob": "d0c75800e6ddb04d36684a319fe7ba27432d7012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 122,
    "path": "GRWTSK/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858562dd763367d2768ee99cd060752929770f0ff25239dd5836f33670e436f5",
  "verification": {
    "reference": "docs/verification/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d75032a-b4b8-6cba-dbd4-17916f12d440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem increasing_cantorFunction (h1 : 0 < c) (h2 : c < 1 / 2) {n : ℕ} {f g : ℕ → Bool}
    (hn : ∀ k < n, f k = g k) (fn : f n = false) (gn : g n = true) :
    cantorFunction c f < cantorFunction c g := by
  have h3 : c < 1 := by
    apply h2.trans
    norm_num
  induction n generalizing f g with
  | zero =>
    let f_max : ℕ → Bool := fun n => Nat.rec false (fun _ _ => true) n
    have hf_max : ∀ n, f n → f_max n := by
      intro n hn
      cases n
      · rw [fn] at hn
        contradiction
      simp [f_max]
    let g_min : ℕ → Bool := fun n => Nat.rec true (fun _ _ => false) n
    have hg_min : ∀ n, g_min n → g n := by
      intro n hn
      cases n
      · rw [gn]
      simp at hn
    apply (cantorFunction_le (le_of_lt h1) h3 hf_max).trans_lt
    refine lt_of_lt_of_le ?_ (cantorFunction_le (le_of_lt h1) h3 hg_min)
    have : c / (1 - c) < 1 := by
      rw [div_lt_one, lt_sub_iff_add_lt]
      · convert! _root_.add_lt_add h2 h2
        norm_num
      rwa [sub_pos]
    convert! this
    · rw [cantorFunction_succ _ (le_of_lt h1) h3, div_eq_mul_inv, ←
        tsum_geometric_of_lt_one (le_of_lt h1) h3]
      apply zero_add
    · refine (tsum_eq_single 0 ?_).trans ?_
      · intro n hn
        cases n
        · contradiction
        simp [g_min]
      · exact cantorFunctionAux_zero _
  | succ n ih =>
  rw [cantorFunction_succ f h1.le h3, cantorFunction_succ g h1.le h3]
  rw [hn 0 <| zero_lt_succ n]
  gcongr
  exact ih (fun k hk => hn _ <| Nat.succ_lt_succ hk) fn gn

/-- `cantorFunction c` is injective if `0 < c < 1/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c75800e6ddb04d36684a319fe7ba27432d7012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
