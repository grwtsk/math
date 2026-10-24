# exists_ker_pow_eq_ker_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:071c2c55-95fd-d654-acf1-afb714a42fe6",
  "kind": "theorem",
  "lexical_name": "exists_ker_pow_eq_ker_pow_succ",
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
  "slug": "exists-ker-pow-eq-ker-pow-succ--5e5dce04aef1d624aac5ee27",
  "source": {
    "blob": "8171d9f0b1fdb801a43de697928bd0e744e22f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 406,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant38e9b521aa397a3dc091ce431e3629a4b44da131a17bbaa9d8d8ea5f0a5bd621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e5dce04aef1d624aac5ee27420c7fdfc21a76c6317b235d4abfe50a0a746415",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant38e9b521aa397a3dc091ce431e3629a4b44da131a17bbaa9d8d8ea5f0a5bd621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:071c2c55-95fd-d654-acf1-afb714a42fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ker_pow_eq_ker_pow_succ [FiniteDimensional K V] (f : End K V) :
    ∃ k : ℕ, k ≤ finrank K V ∧ LinearMap.ker (f ^ k) = LinearMap.ker (f ^ k.succ) := by
  by_contra h_contra
  simp_rw [not_exists, not_and] at h_contra
  have h_le_ker_pow : ∀ n : ℕ, n ≤ (finrank K V).succ →
      n ≤ finrank K (LinearMap.ker (f ^ n)) := by
    intro n hn
    induction n with
    | zero => exact zero_le
    | succ n ih =>
      have h_ker_lt_ker : LinearMap.ker (f ^ n) < LinearMap.ker (f ^ n.succ) := by
        refine lt_of_le_of_ne ?_ (h_contra n (Nat.le_of_succ_le_succ hn))
        rw [pow_succ']
        apply LinearMap.ker_le_ker_comp
      have h_finrank_lt_finrank :
          finrank K (LinearMap.ker (f ^ n)) < finrank K (LinearMap.ker (f ^ n.succ)) := by
        apply Submodule.finrank_lt_finrank_of_lt h_ker_lt_ker
      calc
        n.succ ≤ (finrank K ↑(LinearMap.ker (f ^ n))).succ :=
          Nat.succ_le_succ (ih (Nat.le_of_succ_le hn))
        _ ≤ finrank K ↑(LinearMap.ker (f ^ n.succ)) := Nat.succ_le_of_lt h_finrank_lt_finrank
  have h_any_n_lt : ∀ n, n ≤ (finrank K V).succ → n ≤ finrank K V := fun n hn =>
    (h_le_ker_pow n hn).trans (Submodule.finrank_le _)
  exact Nat.not_succ_le_self _ (h_any_n_lt (finrank K V).succ (finrank K V).succ.le_refl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant38e9b521aa397a3dc091ce431e3629a4b44da131a17bbaa9d8d8ea5f0a5bd621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant38e9b521aa397a3dc091ce431e3629a4b44da131a17bbaa9d8d8ea5f0a5bd621.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8171d9f0b1fdb801a43de697928bd0e744e22f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
