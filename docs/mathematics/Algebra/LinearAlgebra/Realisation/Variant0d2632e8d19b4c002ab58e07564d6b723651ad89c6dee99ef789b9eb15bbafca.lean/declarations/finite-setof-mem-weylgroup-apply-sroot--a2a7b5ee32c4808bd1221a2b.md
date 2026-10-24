# finite_setOf_mem_weylGroup_apply_sRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dda7794-4285-d4ff-fec9-de652444436a",
  "kind": "lemma",
  "lexical_name": "finite_setOf_mem_weylGroup_apply_sRoot",
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
  "slug": "finite-setof-mem-weylgroup-apply-sroot--a2a7b5ee32c4808bd1221a2b",
  "source": {
    "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 303,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a7b5ee32c4808bd1221a2b066bcf0efc6e35d7eb8860b0df61bfed3d30c78d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dda7794-4285-d4ff-fec9-de652444436a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_setOf_mem_weylGroup_apply_sRoot :
    {w.1 (rl.sRoot i) | (w ∈ rl.weylGroup) (i)}.Finite := by
  obtain ⟨d, hd, hS⟩ := rl.isCartan.transpose.exists_posDef
  set S := rl.matrix * diagonal d with S_def
  replace hS : S.PosDef := by rw [S_def, ← PosDef.transpose_iff]; simpa using hS
  refine ((hS.finite_setOfPred_dotProduct_mulVec_le S.trace).image
    fun c ↦ ∑ j, c j • rl.sRoot j).subset ?_
  rintro - ⟨w, hw, i, rfl⟩
  obtain ⟨c, hc, hQ⟩ := rl.exists_zsum_eq_of_mem_weylGroup hS.isHermitian.isSymm hw (Pi.single i 1)
  refine ⟨c, ?_, ?_⟩
  · rw [mem_ofPred_eq, hQ, single_dotProduct, one_mul, Matrix.mulVec_single_one, Matrix.col_apply]
    exact Finset.single_le_sum (fun _ _ ↦ hS.diag_pos.le) (Finset.mem_univ i)
  · simp [← hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
