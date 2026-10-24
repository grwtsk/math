# instAlgebraCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d83cf994548eac3667f71736bde3d9b6a20f31fd7b77b0f3002e1d1afbfd53d",
  "kind": "instance",
  "lexical_name": "instAlgebraCompletion",
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
  "slug": "instalgebracompletion--eca2a01181a3b12955193f52",
  "source": {
    "blob": "00974fbd43c403d66da8c5d54cc4b9564d357fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 841,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca2a01181a3b12955193f521fd4d02b632a98affc8bc0be4ffb2b363e8fbf98",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d83cf994548eac3667f71736bde3d9b6a20f31fd7b77b0f3002e1d1afbfd53d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instAlgebraCompletion : Algebra S ((v.valuation K).Completion) where
  toSMul := Completion.instSMul _ _
  algebraMap := Completion.coeRingHom.comp (algebraMap S (WithVal (v.valuation K)))
  commutes' r x := by
    induction x using Completion.induction_on with
    | hp =>
      exact isClosed_eq (continuous_const_mul _) (continuous_mul_const _)
    | ih x => rw [mul_comm]
  smul_def' r x := by
    induction x using Completion.induction_on with
    | hp =>
      exact isClosed_eq (continuous_const_smul _) (continuous_const_mul _)
    | ih x =>
      simp [Algebra.smul_def, Completion.algebraMap_def, WithVal.algebraMap_right_apply,
        Completion.coeRingHom]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00974fbd43c403d66da8c5d54cc4b9564d357fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
