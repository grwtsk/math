# dualTensorHom_bijective_of_finite_projective_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69ab597e-9024-fadd-292f-59aed4f6b43b",
  "kind": "theorem",
  "lexical_name": "dualTensorHom_bijective_of_finite_projective_right",
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
  "slug": "dualtensorhom-bijective-of-finite-projective-right--c23c4c467b52190c0a26e396",
  "source": {
    "blob": "db5a82030de808236dbf310af5c2ed4a0f46c4bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 262,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23c4c467b52190c0a26e396a206b332fc2341e779ac1009f54ff8adc6d7d0d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69ab597e-9024-fadd-292f-59aed4f6b43b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualTensorHom_bijective_of_finite_projective_right [Module.Finite R N] [Projective R N] :
    Function.Bijective (dualTensorHom R M N) :=
  have ⟨_n, f, g, _, _, eq⟩ := Finite.exists_comp_eq_id_of_projective R N
  dualTensorHom_bijective_of_comp_eq_id_right g f eq <|
    dualTensorHom_fun_bijective dualTensorHom_self_right_bijective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db5a82030de808236dbf310af5c2ed4a0f46c4bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
