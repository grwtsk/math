# neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0c24ba53ca00e5e4e3f472b9c02e24c49b97d0502e69e876373b78e2ff8c517",
  "kind": "instance",
  "lexical_name": "neg",
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
  "slug": "neg--d01e4cdd1c11f93f4c3cf2e9",
  "source": {
    "blob": "085fb3064e6e44b184dad568041415acb40a6a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1243,
    "line": 1226,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d01e4cdd1c11f93f4c3cf2e92ab4226b8dac742be7e9ef2e462bc7dcd3266bcf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0c24ba53ca00e5e4e3f472b9c02e24c49b97d0502e69e876373b78e2ff8c517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1226–1243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance neg : Neg (M ⊗[R] N) where
  neg :=
    (addConGen (TensorProduct.Eqv R M N)).lift (Neg.aux R) <|
      AddCon.addConGen_le fun x y hxy =>
        match x, y, hxy with
        | _, _, Eqv.of_zero_left n =>
          (AddCon.ker_rel _).2 <| by simp_rw [map_zero, Neg.aux_of, neg_zero, zero_tmul]
        | _, _, Eqv.of_zero_right m =>
          (AddCon.ker_rel _).2 <| by simp_rw [map_zero, Neg.aux_of, tmul_zero]
        | _, _, Eqv.of_add_left m₁ m₂ n =>
          (AddCon.ker_rel _).2 <| by simp_rw [map_add, Neg.aux_of, neg_add, add_tmul]
        | _, _, Eqv.of_add_right m n₁ n₂ =>
          (AddCon.ker_rel _).2 <| by simp_rw [map_add, Neg.aux_of, tmul_add]
        | _, _, Eqv.of_smul s m n =>
          (AddCon.ker_rel _).2 <| by simp_rw [Neg.aux_of, ← smul_neg, ← smul_tmul]
        | _, _, Eqv.add_comm x y =>
          (AddCon.ker_rel _).2 <| by simp_rw [map_add, add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean#L1226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `085fb3064e6e44b184dad568041415acb40a6a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
