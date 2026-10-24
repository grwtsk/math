# completeEquipartiteGraph.turanGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4260ee666c2dac0bce47d138a26b1a5063678744b14bf7d776931916909030ed",
  "kind": "def",
  "lexical_name": "completeEquipartiteGraph.turanGraph",
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
  "slug": "completeequipartitegraph-turangraph--59ecf0cffe6943a37510a8f4",
  "source": {
    "blob": "8ac2e6b2046f7f70dca57c1bc121128ce170a91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59ecf0cffe6943a37510a8f486b857d31ae00b5a5acf5defc512681e261508fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4260ee666c2dac0bce47d138a26b1a5063678744b14bf7d776931916909030ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completeEquipartiteGraph.turanGraph :
    completeEquipartiteGraph r t ≃g turanGraph (r * t) r where
  toFun := by
    refine fun v ↦ ⟨v.2 * r + v.1, ?_⟩
    conv_rhs =>
      rw [← Nat.sub_one_add_one_eq_of_pos v.2.pos, Nat.mul_add_one, mul_comm r (t - 1)]
    exact add_lt_add_of_le_of_lt (Nat.mul_le_mul_right r (Nat.le_pred_of_lt v.2.prop)) v.1.prop
  invFun := by
    refine fun v ↦ (⟨v % r, ?_⟩, ⟨v / r, ?_⟩)
    · have ⟨hr, _⟩ := CanonicallyOrderedAdd.mul_pos.mp v.pos
      exact Nat.mod_lt v hr
    · exact Nat.div_lt_of_lt_mul v.prop
  left_inv v := by
    refine Prod.ext (Fin.ext ?_) (Fin.ext ?_)
    · conv =>
        enter [1, 1, 1, 1, 1]
        rw [Nat.mul_add_mod_self_right]
      exact Nat.mod_eq_of_lt v.1.prop
    · apply le_antisymm
      · rw [Nat.div_le_iff_le_mul_add_pred v.1.pos, mul_comm r ↑v.2]
        exact Nat.add_le_add_left (Nat.le_pred_of_lt v.1.prop) (↑v.2 * r)
      · rw [Nat.le_div_iff_mul_le v.1.pos]
        exact Nat.le_add_right (↑v.2 * r) ↑v.1
  right_inv v := Fin.ext (Nat.div_add_mod' v r)
  map_rel_iff' {v w} := by
    rw [turanGraph_adj, Equiv.coe_fn_mk, Nat.mul_add_mod_self_right, Nat.mod_eq_of_lt v.1.prop,
      Nat.mul_add_mod_self_right, Nat.mod_eq_of_lt w.1.prop, ← Fin.ext_iff.ne,
      ← completeEquipartiteGraph_adj]

/-- `completeEquipartiteGraph r t` contains no edges when `r ≤ 1` or `t = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac2e6b2046f7f70dca57c1bc121128ce170a91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
