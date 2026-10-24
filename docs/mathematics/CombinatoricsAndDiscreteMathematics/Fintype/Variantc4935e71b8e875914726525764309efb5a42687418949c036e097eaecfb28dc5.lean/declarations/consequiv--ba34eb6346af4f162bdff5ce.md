# consEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48bd6430f0bd79d4420eca467e127d2041a8fe7bfb516b990fd4461781f91bd5",
  "kind": "def",
  "lexical_name": "consEquiv",
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
  "slug": "consequiv--ba34eb6346af4f162bdff5ce",
  "source": {
    "blob": "ac80571d69ae61d9c80d9a0c7c200ed665254ccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba34eb6346af4f162bdff5ce577a4472f3eadd333c67708b316ffbb949338f7c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48bd6430f0bd79d4420eca467e127d2041a8fe7bfb516b990fd4461781f91bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def consEquiv {v : α} : v ::ₘ m ≃ Option m where
  toFun x := if h : x.1 = v ∧ x.2.val = m.count v then none else some ⟨x.1, ⟨x.2, by
    by_cases hv : x.1 = v
    · simp only [hv, true_and] at h ⊢
      apply lt_of_le_of_ne (Nat.le_of_lt_add_one _) h
      convert x.2.2 using 1
      simp [hv]
    · convert x.2.2 using 1
      exact (count_cons_of_ne hv _).symm
    ⟩⟩
  invFun x := x.elim ⟨v, ⟨m.count v, by simp⟩⟩ (fun x ↦ ⟨x.1, x.2.castLE (count_le_count_cons ..)⟩)
  left_inv := by
    rintro ⟨x, hx⟩
    dsimp only
    split
    · rename_i h
      obtain ⟨rfl, h2⟩ := h
      simp [← h2]
    · simp
  right_inv := by
    rintro (_ | x)
    · simp
    · simp only [Option.elim_some, Nat.zero_eq, Fin.coe_castLE, Fin.eta, Sigma.eta, dite_eq_ite,
        ite_eq_right_iff, reduceCtorEq, imp_false, not_and]
      rintro rfl
      exact x.2.2.ne

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac80571d69ae61d9c80d9a0c7c200ed665254ccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
