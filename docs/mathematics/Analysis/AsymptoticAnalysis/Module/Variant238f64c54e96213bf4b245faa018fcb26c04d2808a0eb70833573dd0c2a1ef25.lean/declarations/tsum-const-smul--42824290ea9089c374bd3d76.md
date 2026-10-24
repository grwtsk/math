# tsum_const_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c60ec65-d480-723f-d1f9-8685eb952ad8",
  "kind": "lemma",
  "lexical_name": "tsum_const_smul'",
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
  "slug": "tsum-const-smul--42824290ea9089c374bd3d76",
  "source": {
    "blob": "2c955284d566b67078cde64bad79184a0941c4dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42824290ea9089c374bd3d76bc004cb82f9c0e79d2722863419496033e4b1c95",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c60ec65-d480-723f-d1f9-8685eb952ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_const_smul' {γ : Type*} [Group γ] [DistribMulAction γ α] [ContinuousConstSMul γ α]
    [T2Space α] (g : γ) :
    ∑'[L] (i : β), g • f i = g • ∑'[L] (i : β), f i :=
  ((Homeomorph.smul g).isClosedEmbedding.map_tsum f (g := show α ≃+ α from
    { DistribSMul.toAddMonoidHom _ g with
      invFun := DistribSMul.toAddMonoidHom _ g⁻¹
      left_inv a := by simp, right_inv a := by simp })).symm

/-- Infinite sums commute with scalar multiplication. Version for scalars living in a
  `DivisionSemiring`; no summability hypothesis. This could be made to work for a
  `[GroupWithZero γ]` if there was such a thing as `DistribMulActionWithZero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c955284d566b67078cde64bad79184a0941c4dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
