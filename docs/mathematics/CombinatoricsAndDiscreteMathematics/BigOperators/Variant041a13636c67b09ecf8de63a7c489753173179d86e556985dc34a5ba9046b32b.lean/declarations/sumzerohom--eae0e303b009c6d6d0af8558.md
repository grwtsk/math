# sumZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39c5251dd5edd809d445811bc55313e74f785c27bbbe91c2a6759b7123aa7bde",
  "kind": "def",
  "lexical_name": "sumZeroHom",
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
  "slug": "sumzerohom--eae0e303b009c6d6d0af8558",
  "source": {
    "blob": "c1159c0c14b903dea1b83904d8e7f7581bb5ef89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eae0e303b009c6d6d0af8558fd853fa6125953663e28a7963a59600bab71c959",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39c5251dd5edd809d445811bc55313e74f785c27bbbe91c2a6759b7123aa7bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumZeroHom [∀ i, Zero (β i)] [AddCommMonoid γ] (φ : ∀ i, ZeroHom (β i) γ) :
    ZeroHom (Π₀ i, β i) γ where
  toFun f :=
    (f.support'.lift fun s => ∑ i ∈ Multiset.toFinset s.1, φ i (f i)) <| by
      rintro ⟨sx, hx⟩ ⟨sy, hy⟩
      dsimp only [Subtype.coe_mk, toFun_eq_coe] at *
      have H1 : sx.toFinset ∩ sy.toFinset ⊆ sx.toFinset := Finset.inter_subset_left
      have H2 : sx.toFinset ∩ sy.toFinset ⊆ sy.toFinset := Finset.inter_subset_right
      refine
        (Finset.sum_subset H1 ?_).symm.trans
          ((Finset.sum_congr rfl ?_).trans (Finset.sum_subset H2 ?_))
      · intro i H1 H2
        rw [Finset.mem_inter] at H2
        simp only [Multiset.mem_toFinset] at H1 H2
        convert! map_zero (φ i)
        exact (hy i).resolve_left (mt (And.intro H1) H2)
      · intro i _
        rfl
      · intro i H1 H2
        rw [Finset.mem_inter] at H2
        simp only [Multiset.mem_toFinset] at H1 H2
        convert! map_zero (φ i)
        exact (hx i).resolve_left (mt (fun H3 => And.intro H3 H1) H2)
  map_zero' := by
    simp only [toFun_eq_coe, coe_zero, Pi.zero_apply, map_zero, Finset.sum_const_zero]; rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1159c0c14b903dea1b83904d8e7f7581bb5ef89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
