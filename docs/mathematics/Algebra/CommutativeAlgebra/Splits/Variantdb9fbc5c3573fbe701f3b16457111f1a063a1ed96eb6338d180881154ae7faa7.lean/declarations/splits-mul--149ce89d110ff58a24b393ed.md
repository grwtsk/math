# splits_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a31dba56-497b-26db-9c48-6a310dca2075",
  "kind": "theorem",
  "lexical_name": "splits_mul",
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
  "slug": "splits-mul--149ce89d110ff58a24b393ed",
  "source": {
    "blob": "0bb6e5015403e0b6ee1841e798625f679eaa30d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 450,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149ce89d110ff58a24b393ed61e95e10dc55a9ecbd82ecba47b4efc65da3a33d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a31dba56-497b-26db-9c48-6a310dca2075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_mul (hf₀ : f ≠ 0) (hg₀ : g ≠ 0) :
    Splits (f * g) ↔ Splits f ∧ Splits g := by
  refine ⟨fun h ↦ ?_, and_imp.mpr .mul⟩
  generalize hp : f * g = p at *
  generalize hn : p.natDegree = n
  induction n generalizing p f g with
  | zero =>
    rw [← hp, natDegree_mul hf₀ hg₀, Nat.add_eq_zero_iff] at hn
    exact ⟨.of_natDegree_eq_zero hn.1, .of_natDegree_eq_zero hn.2⟩
  | succ n ih =>
    obtain ⟨a, ha⟩ := Splits.exists_eval_eq_zero h (degree_ne_of_natDegree_ne <| hn ▸ by simp)
    have := dvd_iff_isRoot.mpr ha
    rw [← hp, (prime_X_sub_C a).dvd_mul] at this
    wlog hf : X - C a ∣ f with hf2
    · exact .symm <| hf2 n ih hg₀ hf₀ p ((mul_comm g f).trans hp) h hn a ha this.symm <|
        this.resolve_left hf
    obtain ⟨f, rfl⟩ := hf
    rw [mul_assoc] at hp; subst hp
    rw [natDegree_mul (by aesop) (by aesop), natDegree_X_sub_C, add_comm, Nat.succ_inj] at hn
    have := ih (by aesop) hg₀ (f * g) rfl (splits_X_sub_C_mul_iff.mp h) hn
    aesop

@[deprecated (since := "2026-06-08")] alias splits_mul_iff := splits_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb6e5015403e0b6ee1841e798625f679eaa30d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
