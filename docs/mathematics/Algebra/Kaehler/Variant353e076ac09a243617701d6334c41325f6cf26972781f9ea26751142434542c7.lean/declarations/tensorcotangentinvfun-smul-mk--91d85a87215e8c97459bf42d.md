# tensorCotangentInvFun_smul_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb141bf6b2643c2566500a9f40bf20f129ff5367",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3d5ed20-3cc0-460a-a901-949768bbf858",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faff7afc-f5d2-3679-d878-f0250ad732f2",
  "kind": "lemma",
  "lexical_name": "tensorCotangentInvFun_smul_mk",
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
  "slug": "tensorcotangentinvfun-smul-mk--91d85a87215e8c97459bf42d",
  "source": {
    "blob": "bb141bf6b2643c2566500a9f40bf20f129ff5367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 173,
    "path": "GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d85a87215e8c97459bf42d74d3f2578900644bcfd6f666039f0893bb3cf02c",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faff7afc-f5d2-3679-d878-f0250ad732f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorCotangentInvFun_smul_mk
    [alg : Algebra P.Ring Q.Ring] (halg : algebraMap P.Ring Q.Ring = f.toRingHom)
    (H : Function.Bijective ((f.mapKer halg).liftBaseChange Q.Ring)) (x : Q.Ring) (y : P.ker) :
    tensorCotangentInvFun f halg H (x • .mk ⟨f.toRingHom y, (f.mapKer halg y).2⟩) =
      x • 1 ⊗ₜ .mk y := by
  letI := ((algebraMap S T).comp (algebraMap P.Ring S)).toAlgebra
  haveI : IsScalarTower P.Ring S T := .of_algebraMap_eq' rfl
  haveI : IsScalarTower P.Ring Q.Ring T :=
    .of_algebraMap_eq fun r ↦ halg ▸ (f.algebraMap_toRingHom r).symm
  letI e := LinearEquiv.ofBijective _ H
  trans tensorCotangentInvFun f halg H (.mk ((f.mapKer halg).liftBaseChange Q.Ring (x ⊗ₜ y)))
  · simp; rfl
  show ((TensorProduct.mk _ _ _ 1).restrictScalars _ ∘ₗ Cotangent.mk).liftBaseChange _
    (e.symm (e (x ⊗ₜ y))) = _
  rw [e.symm_apply_apply]
  simp

/-- If `J ≃ Q ⊗ₚ I` (e.g. when `T = Q ⊗ₚ S` and `P → Q` is flat), then `T ⊗ₛ I/I² ≃ J/J²`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb141bf6b2643c2566500a9f40bf20f129ff5367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
