# mem_adjoint_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d23a4b7eb98846403de0228106bbaeb022b85a21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:026bc779-270f-428a-85fa-1ce4a7f99924",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:664d3e1e-118f-4e21-137d-2c5ecfe931c5",
  "kind": "theorem",
  "lexical_name": "mem_adjoint_iff",
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
  "slug": "mem-adjoint-iff--98f47483f1a58ca80710948a",
  "source": {
    "blob": "d23a4b7eb98846403de0228106bbaeb022b85a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f47483f1a58ca80710948ac0e8410319e49272311f9659032c579224130ca3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:664d3e1e-118f-4e21-137d-2c5ecfe931c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoint_iff (g : Submodule 𝕜 (E × F)) (x : F × E) :
    x ∈ g.adjoint ↔
    ∀ a b, (a, b) ∈ g → inner 𝕜 b x.fst - inner 𝕜 a x.snd = 0 := by
  simp only [Submodule.adjoint, mem_map, mem_orthogonal, LinearEquiv.coe_coe,
    LinearEquiv.trans_apply, LinearEquiv.skewSwap_symm_apply, coe_symm_linearEquiv, Prod.exists,
    prod_inner_apply, ofLp_fst, ofLp_snd, forall_exists_index, and_imp, coe_linearEquiv]
  constructor
  · rintro ⟨y, h1, h2⟩ a b hab
    rw [← h2, WithLp.ofLp_fst, WithLp.ofLp_snd]
    specialize h1 (toLp 2 (b, -a)) a b hab rfl
    dsimp at h1
    simp only [inner_neg_left, ← sub_eq_add_neg] at h1
    exact h1
  · intro h
    refine ⟨toLp 2 x, ?_, rfl⟩
    intro u a b hab hu
    simp [← hu, ← sub_eq_add_neg, h a b hab]

variable {T : E →ₗ.[𝕜] F} [CompleteSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d23a4b7eb98846403de0228106bbaeb022b85a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
