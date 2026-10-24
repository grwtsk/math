# finite_counterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c727693-b4a6-8dd2-eeda-097a5f66becc",
  "kind": "theorem",
  "lexical_name": "finite_counterexample",
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
  "slug": "finite-counterexample--704a6210128b7c6cab8e6ab3",
  "source": {
    "blob": "0f3b491e97249afd822bde8ecf807274c5941f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:704a6210128b7c6cab8e6ab335f4fec27a2546db858715b9e7e0d6912159c7cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c727693-b4a6-8dd2-eeda-097a5f66becc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_counterexample (h : HasType P Γ M T) (hn : ¬ StronglyNormalizing M)
    (hw : SystemWeaklyNormalizing P) :
    ∃ D : Finset S, ∃ Γ' : List (Expr {s // s ∈ D}),
      ∃ M' T' : Expr {s // s ∈ D},
        HasType (P.on (D : Set S)) Γ' M' T' ∧ ¬ StronglyNormalizing M' ∧
          SystemWeaklyNormalizing (P.on (D : Set S)) := by
  classical
  obtain ⟨A, R, hr⟩ := h.finite_support
  let D := A.biUnion (fun a => {a.1, a.2}) ∪
    R.biUnion (fun r => {r.1, r.2.1, r.2.2})
  have ax_mem {s t : S} (h : (s,t) ∈ A) : s ∈ D ∧ t ∈ D := by
    constructor
    · exact Finset.mem_union_left _ (Finset.mem_biUnion.mpr ⟨(s,t), h, by simp⟩)
    · exact Finset.mem_union_left _ (Finset.mem_biUnion.mpr ⟨(s,t), h, by simp⟩)
  have rule_mem {a b c : S} (h : (a,b,c) ∈ R) : a ∈ D ∧ b ∈ D ∧ c ∈ D := by
    constructor
    · exact Finset.mem_union_right _ (Finset.mem_biUnion.mpr ⟨(a,b,c), h, by simp⟩)
    constructor
    · exact Finset.mem_union_right _ (Finset.mem_biUnion.mpr ⟨(a,b,c), h, by simp⟩)
    · exact Finset.mem_union_right _ (Finset.mem_biUnion.mpr ⟨(a,b,c), h, by simp⟩)
  obtain ⟨s₀, t₀, h₀⟩ := hr.has_axiom
  let d₀ : {s // s ∈ D} := ⟨s₀, (ax_mem h₀.2).1⟩
  let f : S → {s // s ∈ D} := fun s => if h : s ∈ D then ⟨s,h⟩ else d₀
  have f_val {s : S} (h : s ∈ D) : (f s).val = s := by
    simp only [f, dif_pos h]
  have ha : ∀ s t, (P.restrict A R).axioms s t →
      (P.on (D : Set S)).axioms (f s) (f t) := by
    intro s t hst
    change P.axioms (f s).val (f t).val
    rw [f_val (ax_mem hst.2).1, f_val (ax_mem hst.2).2]
    exact hst.1
  have hp : ∀ a b c, (P.restrict A R).rule a b c →
      (P.on (D : Set S)).rule (f a) (f b) (f c) := by
    intro a b c habc
    change P.rule (f a).val (f b).val (f c).val
    rw [f_val (rule_mem habc.2).1, f_val (rule_mem habc.2).2.1,
      f_val (rule_mem habc.2).2.2]
    exact habc.1
  exact ⟨D, _, _, _, hr.mapSort f ha hp,
    fun hs => hn (StronglyNormalizing.of_mapSort f hs), hw.on d₀⟩

end HasType

end PureTypeSystem

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3b491e97249afd822bde8ecf807274c5941f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
