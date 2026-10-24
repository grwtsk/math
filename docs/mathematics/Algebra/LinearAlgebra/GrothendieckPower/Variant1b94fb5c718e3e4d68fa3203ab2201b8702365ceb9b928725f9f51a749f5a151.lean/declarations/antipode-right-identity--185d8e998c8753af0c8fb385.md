# antipode_right_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 826,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81693b9d-daed-a4e6-d566-fb9438a4c8b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0626c35-7243-0976-6ad9-c5324601bd3f",
  "kind": "theorem",
  "lexical_name": "antipode_right_identity",
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
  "slug": "antipode-right-identity--185d8e998c8753af0c8fb385",
  "source": {
    "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 826,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185d8e998c8753af0c8fb3850e97583b606e4a71546be8f701c45a9f822874d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0626c35-7243-0976-6ad9-c5324601bd3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antipode_right_identity :
    ((Algebra.TensorProduct.lift (powerMap 7) (.id R A) fun _ ↦ Commute.all _).comp
      (Bialgebra.comulAlgHom R A)) =
        (Algebra.ofId R A).comp (Bialgebra.counitAlgHom R A) := by
  have h := congr_arg WithConv.ofConv powerMap_seven_mul_universalPoint
  change
    (Algebra.TensorProduct.lmul' R).comp
        ((Algebra.TensorProduct.map (powerMap 7) (.id R A)).comp
          (Bialgebra.comulAlgHom R A)) =
      (Algebra.ofId R A).comp (Bialgebra.counitAlgHom R A) at h
  rw [← AlgHom.comp_assoc, Algebra.TensorProduct.lmul'_comp_map] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc594f8d81f2a9ac13dab5668dba02cfef8b32a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
