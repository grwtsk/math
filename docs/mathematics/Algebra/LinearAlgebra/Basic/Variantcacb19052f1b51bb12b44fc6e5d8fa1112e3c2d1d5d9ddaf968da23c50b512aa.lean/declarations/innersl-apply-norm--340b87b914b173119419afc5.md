# innerSL_apply_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1785,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00181ef4-7e05-67de-3cff-0ecaef16e3c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f4727ce-cb4a-ff88-479b-c3c345ff3ac8",
  "kind": "theorem",
  "lexical_name": "innerSL_apply_norm",
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
  "slug": "innersl-apply-norm--340b87b914b173119419afc5",
  "source": {
    "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1798,
    "line": 1785,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340b87b914b173119419afc5de318dab6f86433b3bc8e23706aaad7308bebd4f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f4727ce-cb4a-ff88-479b-c3c345ff3ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1785–1798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerSL_apply_norm (x : E) : ‖innerSL 𝕜 x‖ = ‖x‖ := by
  refine'
    le_antisymm ((innerSL 𝕜 x).op_norm_le_bound (norm_nonneg _) fun y => norm_inner_le_norm _ _) _
  rcases eq_or_ne x 0 with (rfl | h)
  · simp
  · refine' (mul_le_mul_right (norm_pos_iff.2 h)).mp _
    calc
      ‖x‖ * ‖x‖ = ‖(⟪x, x⟫ : 𝕜)‖ := by
        rw [← sq, inner_self_eq_norm_sq_to_K, norm_pow, norm_ofReal, abs_norm]
      _ ≤ ‖innerSL 𝕜 x‖ * ‖x‖ := (innerSL 𝕜 x).le_op_norm _
set_option linter.uppercaseLean3 false in
#align innerSL_apply_norm innerSL_apply_norm

/-- The inner product as a continuous sesquilinear map, with the two arguments flipped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean#L1785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bb8e59ba6929738bdb13de5934cd78d0636b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
