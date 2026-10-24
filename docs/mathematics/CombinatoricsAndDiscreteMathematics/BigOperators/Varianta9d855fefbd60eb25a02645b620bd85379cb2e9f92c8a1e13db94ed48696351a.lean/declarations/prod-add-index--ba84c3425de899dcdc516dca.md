# prod_add_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:715a0eca-af1a-1ff0-c346-285ef8b81ccc",
  "kind": "theorem",
  "lexical_name": "prod_add_index",
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
  "slug": "prod-add-index--ba84c3425de899dcdc516dca",
  "source": {
    "blob": "5c7263856ff3b8c2d85f1a4dd475ca5cf7757239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba84c3425de899dcdc516dca10780d1a48cd3001d516a4d0878dba631866a3b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:715a0eca-af1a-1ff0-c346-285ef8b81ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_add_index [∀ i, AddCommMonoid (β i)] [∀ (i) (x : β i), Decidable (x ≠ 0)]
    [CommMonoid γ] {f g : Π₀ i, β i} {h : ∀ i, β i → γ} (h_zero : ∀ i, h i 0 = 1)
    (h_add : ∀ i b₁ b₂, h i (b₁ + b₂) = h i b₁ * h i b₂) : (f + g).prod h = f.prod h * g.prod h :=
  have f_eq : (∏ i ∈ f.support ∪ g.support, h i (f i)) = f.prod h :=
    (Finset.prod_subset Finset.subset_union_left <| by
        simp +contextual [mem_support_iff, h_zero]).symm
  have g_eq : (∏ i ∈ f.support ∪ g.support, h i (g i)) = g.prod h :=
    (Finset.prod_subset Finset.subset_union_right <| by
        simp +contextual [mem_support_iff, h_zero]).symm
  calc
    (∏ i ∈ (f + g).support, h i ((f + g) i)) = ∏ i ∈ f.support ∪ g.support, h i ((f + g) i) :=
      Finset.prod_subset support_add <| by
        simp +contextual [mem_support_iff, h_zero]
    _ = (∏ i ∈ f.support ∪ g.support, h i (f i)) * ∏ i ∈ f.support ∪ g.support, h i (g i) := by
      { simp [h_add, Finset.prod_mul_distrib] }
    _ = _ := by rw [f_eq, g_eq]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7263856ff3b8c2d85f1a4dd475ca5cf7757239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
