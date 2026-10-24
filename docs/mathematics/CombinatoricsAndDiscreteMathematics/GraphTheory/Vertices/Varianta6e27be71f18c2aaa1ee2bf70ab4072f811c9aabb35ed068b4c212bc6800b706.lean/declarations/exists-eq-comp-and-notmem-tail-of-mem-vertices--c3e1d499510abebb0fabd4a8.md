# exists_eq_comp_and_notMem_tail_of_mem_vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:800004eb-d79a-3e10-02d3-937805de3a95",
  "kind": "theorem",
  "lexical_name": "exists_eq_comp_and_notMem_tail_of_mem_vertices",
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
  "slug": "exists-eq-comp-and-notmem-tail-of-mem-vertices--c3e1d499510abebb0fabd4a8",
  "source": {
    "blob": "015fce1be0e0cbd8303ad4a73330b33eda579435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e1d499510abebb0fabd4a8760536ecaaff4a5048c61ee9908c9fe076965e2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:800004eb-d79a-3e10-02d3-937805de3a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_comp_and_notMem_tail_of_mem_vertices {v : V} (hv : v ∈ p.vertices) :
    ∃ (p₁ : Path a v) (p₂ : Path v b),
      p = p₁.comp p₂ ∧ v ∉ p₂.vertices.tail := by
  induction p with
  | nil =>
    have hxa : v = a := by
      simpa [vertices_nil, List.mem_singleton] using hv
    subst hxa
    exact ⟨Path.nil, Path.nil, by simp only [comp_nil],
      by simp only [vertices_nil, tail_cons, not_mem_nil, not_false_eq_true]⟩
  | cons pPrev e ih =>
    have hv' : v ∈ pPrev.vertices ∨ v = (pPrev.cons e).end := by
      simpa using (mem_vertices_cons pPrev e).1 hv
    have h_case₁ : v = (pPrev.cons e).end → ∃ (p₁ : Path a v) (p₂ : Path v (pPrev.cons e).end),
        pPrev.cons e = p₁.comp p₂ ∧ v ∉ p₂.vertices.tail := by
      rintro rfl
      exact ⟨pPrev.cons e, Path.nil, by simp [comp_nil], by simp [vertices_nil]⟩
    have h_case₂ : v ∈ pPrev.vertices → v ≠ (pPrev.cons e).end →
        ∃ (p₁ : Path a v) (p₂ : Path v (pPrev.cons e).end),
          pPrev.cons e = p₁.comp p₂ ∧ v ∉ p₂.vertices.tail := by
      intro hxPrev hxe_ne
      obtain ⟨q₁, q₂, h_prev, h_not_tail⟩ := ih hxPrev
      let q₂' : Path v (pPrev.cons e).end := q₂.cons e
      have h_no_tail : v ∉ q₂'.vertices.tail := by grind [vertices_cons, end_cons]
      exact ⟨q₁, q₂', by simp [q₂', h_prev], h_no_tail⟩
    cases hv' with
    | inl h_in_prefix =>
      by_cases h_eq_end : v = (pPrev.cons e).end
      · exact h_case₁ h_eq_end
      · exact h_case₂ h_in_prefix h_eq_end
    | inr h_eq_end => exact h_case₁ h_eq_end

end

end Quiver.Path
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015fce1be0e0cbd8303ad4a73330b33eda579435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
