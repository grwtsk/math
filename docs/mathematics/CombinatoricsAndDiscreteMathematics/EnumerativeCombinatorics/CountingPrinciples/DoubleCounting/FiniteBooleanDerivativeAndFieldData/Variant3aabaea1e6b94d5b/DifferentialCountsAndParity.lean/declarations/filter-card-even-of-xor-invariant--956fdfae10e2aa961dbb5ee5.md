# filter_card_even_of_xor_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7654c03f-489a-b410-fb36-3913dfd69075",
  "kind": "theorem",
  "lexical_name": "filter_card_even_of_xor_invariant",
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
  "slug": "filter-card-even-of-xor-invariant--956fdfae10e2aa961dbb5ee5",
  "source": {
    "blob": "0c62670a0e266d294965786ca7d2de323574d336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:956fdfae10e2aa961dbb5ee52fd3cd1cb2ce7cead996391c007123276de1ea71",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7654c03f-489a-b410-fb36-3913dfd69075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem filter_card_even_of_xor_invariant
    {n : Nat} (δ : Bits n) (hδ : δ ≠ zeroBits n)
    (P : Bits n → Prop) [DecidablePred P]
    (hP : ∀ x, P (xorBits x δ) ↔ P x) :
    Even ((Finset.univ.filter P).card) := by
  classical
  obtain ⟨i, hi⟩ := exists_true_of_ne_zero hδ
  let S : Finset (Bits n) := Finset.univ.filter P
  let Sfalse : Finset (Bits n) := S.filter fun x => x i = false
  let Strue : Finset (Bits n) := S.filter fun x => x i = true
  let f : Bits n → Bits n := fun x => xorBits x δ
  have hf_mem : Set.MapsTo f (Sfalse : Set (Bits n))
      (Strue : Set (Bits n)) := by
    intro x hx
    change x ∈ Sfalse at hx
    change f x ∈ Strue
    simp [Sfalse, S] at hx
    simp only [Strue, S, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hP x).2 hx.1
    · simp [f, xorBits, hi, hx.2]
  have hg_mem : Set.MapsTo f (Strue : Set (Bits n))
      (Sfalse : Set (Bits n)) := by
    intro x hx
    change x ∈ Strue at hx
    change f x ∈ Sfalse
    simp [Strue, S] at hx
    simp only [Sfalse, S, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hP x).2 hx.1
    · simp [f, xorBits, hi, hx.2]
  have hf_involutive : Function.Involutive f := by
    intro x
    exact xorBits_cancel_self_right x δ
  have hcard : Sfalse.card = Strue.card :=
    Finset.card_nbij' f f hf_mem hg_mem
      (fun x _ => hf_involutive x) (fun x _ => hf_involutive x)
  have hnot : S.filter (fun x => ¬x i = false) = Strue := by
    ext x
    simp only [Strue, Finset.mem_filter]
    cases x i <;> simp
  have htotal : Sfalse.card + Strue.card = S.card := by
    change (S.filter fun x => x i = false).card + Strue.card = S.card
    rw [← hnot]
    exact Finset.card_filter_add_card_filter_not
      (s := S) (fun x => x i = false)
  refine ⟨Sfalse.card, ?_⟩
  change S.card = Sfalse.card + Sfalse.card
  omega

/-- Every nonzero-difference differential count is even. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62670a0e266d294965786ca7d2de323574d336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
