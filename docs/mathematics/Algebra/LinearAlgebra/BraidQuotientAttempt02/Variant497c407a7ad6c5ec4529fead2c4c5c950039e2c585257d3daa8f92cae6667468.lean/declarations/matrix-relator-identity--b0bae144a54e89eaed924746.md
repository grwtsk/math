# matrix_relator_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b61f7aa-58ba-d77f-cb5a-f979eeb14922",
  "kind": "theorem",
  "lexical_name": "matrix_relator_identity",
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
  "slug": "matrix-relator-identity--b0bae144a54e89eaed924746",
  "source": {
    "blob": "70e046bfb1d5d080cfa4ab655068ade1abd0b223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0bae144a54e89eaed924746eb335dbf2ef11a63384c1323bdd5a9fefbeb8354",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b61f7aa-58ba-d77f-cb5a-f979eeb14922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_relator_identity :
    ∀ r ∈ braidRelations, FreeGroup.lift generatorMatrix r = 1 := by
  intro r hr
  change r=braidRelator at hr
  subst r
  simp only [braidRelator,map_mul,map_inv,FreeGroup.lift_apply_of]
  simp only [generatorMatrix,ite_true,show (1:Fin 2)≠0 by decide,ite_false]
  rw [matrix_braid_relation,mul_inv_cancel]

/-- Genuine normal-closure quotient lift; relation satisfaction is proved above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e046bfb1d5d080cfa4ab655068ade1abd0b223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
