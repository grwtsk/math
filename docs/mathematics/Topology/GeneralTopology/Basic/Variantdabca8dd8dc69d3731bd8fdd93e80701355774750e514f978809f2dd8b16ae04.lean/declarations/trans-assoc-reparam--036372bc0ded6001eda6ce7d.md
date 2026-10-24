# trans_assoc_reparam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c6df6ff-4972-1cec-caf2-c91056da8fea",
  "kind": "theorem",
  "lexical_name": "trans_assoc_reparam",
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
  "slug": "trans-assoc-reparam--036372bc0ded6001eda6ce7d",
  "source": {
    "blob": "5c862cafeaf6055b73ba26559769ec4f40e1528c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:036372bc0ded6001eda6ce7dc2e46ef59a103fe0815e7161920cfa89ab70f52c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c6df6ff-4972-1cec-caf2-c91056da8fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_assoc_reparam {x₀ x₁ x₂ x₃ : X} (p : Path x₀ x₁) (q : Path x₁ x₂) (r : Path x₂ x₃) :
    (p.trans q).trans r =
      (p.trans (q.trans r)).reparam
        (fun t => ⟨transAssocReparamAux t, transAssocReparamAux_mem_I t⟩) (by fun_prop)
        (Subtype.ext transAssocReparamAux_zero) (Subtype.ext transAssocReparamAux_one) := by
  ext x
  simp only [transAssocReparamAux, Path.trans_apply, mul_inv_cancel_left₀, not_le,
    Function.comp_apply, Ne, not_false_iff, one_ne_zero, mul_ite, Subtype.coe_mk,
    Path.coe_reparam]
  -- TODO: why does split_ifs not reduce the ifs??????
  split_ifs with h₁ h₂ h₃ h₄ h₅
  · rfl
  iterate 6 exfalso; linarith
  · have h : 2 * (2 * (x : ℝ)) - 1 = 2 * (2 * (↑x + 1 / 4) - 1) := by linarith
    simp [h₂, h₁, h, dif_neg (show ¬False from id), dif_pos True.intro, if_false, if_true]
  iterate 6 exfalso; linarith
  · congr
    ring

/-- For paths `p q r`, we have a homotopy from `(p.trans q).trans r` to `p.trans (q.trans r)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c862cafeaf6055b73ba26559769ec4f40e1528c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
