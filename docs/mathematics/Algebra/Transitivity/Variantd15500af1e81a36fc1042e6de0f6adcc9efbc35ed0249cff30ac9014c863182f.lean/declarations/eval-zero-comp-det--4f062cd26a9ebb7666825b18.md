# eval_zero_comp_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dfd043c-439f-dea9-1a3a-97e487cab012",
  "kind": "lemma",
  "lexical_name": "eval_zero_comp_det",
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
  "slug": "eval-zero-comp-det--4f062cd26a9ebb7666825b18",
  "source": {
    "blob": "872a99f9134db81c722fd55c07cdcf273a9ce63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 130,
    "path": "GRWTSK/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f062cd26a9ebb7666825b1835c6b661e2e41c13c3dcfef8abc4da775588a3de",
  "verification": {
    "reference": "docs/verification/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dfd043c-439f-dea9-1a3a-97e487cab012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eval_zero_comp_det :
    eval 0 (comp m m n n R[X] <| (cornerAddX M k).map f.polyToMatrix).det =
      (comp m m n n R <| M.map f).det := by
  simp_rw [← coe_evalRingHom, RingHom.map_det, ← compRingEquiv_apply, ← RingEquiv.coe_toRingHom,
    ← RingHom.mapMatrix_apply, ← RingHom.comp_apply, ← RingHom.comp_assoc,
    evalRingHom_mapMatrix_comp_compRingEquiv, RingHom.comp_assoc, RingHom.mapMatrix_comp,
    evalRingHom_mapMatrix_comp_polyToMatrix, ← RingHom.mapMatrix_comp, RingHom.comp_apply]
  congr with i j
  simp [cornerAddX, diagonal, apply_ite]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872a99f9134db81c722fd55c07cdcf273a9ce63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
