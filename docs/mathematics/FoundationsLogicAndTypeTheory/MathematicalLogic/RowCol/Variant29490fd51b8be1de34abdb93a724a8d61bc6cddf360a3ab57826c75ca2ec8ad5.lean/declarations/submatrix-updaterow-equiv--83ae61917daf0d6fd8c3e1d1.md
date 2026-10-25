# submatrix_updateRow_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76385af3-7e0c-9b7b-7812-06aa891b40ce",
  "kind": "theorem",
  "lexical_name": "submatrix_updateRow_equiv",
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
  "slug": "submatrix-updaterow-equiv--83ae61917daf0d6fd8c3e1d1",
  "source": {
    "blob": "270d2fa760022616464a9d668cab5baaf0f66bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant29490fd51b8be1de34abdb93a724a8d61bc6cddf360a3ab57826c75ca2ec8ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83ae61917daf0d6fd8c3e1d1c315cd9e441e0121e281c3853f1e2e3e004b2610",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant29490fd51b8be1de34abdb93a724a8d61bc6cddf360a3ab57826c75ca2ec8ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76385af3-7e0c-9b7b-7812-06aa891b40ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_updateRow_equiv [DecidableEq l] [DecidableEq m] (A : Matrix m n α) (i : m)
    (r : n → α) (e : l ≃ m) (f : o ≃ n) :
    (A.updateRow i r).submatrix e f = updateRow (A.submatrix e f) (e.symm i) fun i => r (f i) :=
  Eq.trans (by simp_rw [Equiv.apply_symm_apply]) (updateRow_submatrix_equiv A _ _ e f).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant29490fd51b8be1de34abdb93a724a8d61bc6cddf360a3ab57826c75ca2ec8ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant29490fd51b8be1de34abdb93a724a8d61bc6cddf360a3ab57826c75ca2ec8ad5.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270d2fa760022616464a9d668cab5baaf0f66bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
