# comp_sec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c8fd4e93d0b005c350e9d3994f5c54d8e01114d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d60124ee-9c78-d665-56ea-1734052e7927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:359451dc-8d8d-a2cd-ac33-1af36eb924b1",
  "kind": "lemma",
  "lexical_name": "comp_sec",
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
  "slug": "comp-sec--8081912e2f595edcc7c3fa73",
  "source": {
    "blob": "4c8fd4e93d0b005c350e9d3994f5c54d8e01114d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 257,
    "path": "GRWTSK/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8081912e2f595edcc7c3fa731bc7c22e22bd0482b1c6331a8dfd1647d846166d",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:359451dc-8d8d-a2cd-ac33-1af36eb924b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_sec :
    (TensorProduct.AlgebraTensorModule.lift
      ((lsmul S S M).toLinearMap.flip.restrictScalars R).flip).comp (sec R S M) =
      LinearMap.id := by
  ext x
  simp only [sec, LinearMap.coe_comp, LinearMap.coe_mk, LinearMap.coe_toAddHom,
    Function.comp_apply, LinearMap.flip_apply, TensorProduct.AlgebraTensorModule.mapBilinear_apply,
    TensorProduct.AlgebraTensorModule.lift_apply, LinearMap.id_coe, id_eq]
  trans (TensorProduct.lmul' R (elem R S)) • x
  · induction elem R S using TensorProduct.induction_on with
    | zero => simp
    | tmul r s => simp [mul_smul, smul_comm r s]
    | add y z hy hz => simp [hy, hz, add_smul]
  · rw [lmul_elem, one_smul]

/-- If `S` is an unramified `R`-algebra, then `R`-flat implies `S`-flat. Iversen I.2.7 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8fd4e93d0b005c350e9d3994f5c54d8e01114d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
