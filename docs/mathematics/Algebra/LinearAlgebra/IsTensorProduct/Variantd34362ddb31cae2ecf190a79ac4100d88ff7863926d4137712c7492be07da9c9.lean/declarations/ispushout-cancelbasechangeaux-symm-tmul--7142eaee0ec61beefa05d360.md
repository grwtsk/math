# IsPushout.cancelBaseChangeAux_symm_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e326a98f-c205-589b-3d94-c027f0e4b9e4",
  "kind": "lemma",
  "lexical_name": "IsPushout.cancelBaseChangeAux_symm_tmul",
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
  "slug": "ispushout-cancelbasechangeaux-symm-tmul--7142eaee0ec61beefa05d360",
  "source": {
    "blob": "915342d3b63e40411174a7257f149107258f9690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 802,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7142eaee0ec61beefa05d360b86e09f6a5177492c187f4bc91197bda192d7fc2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e326a98f-c205-589b-3d94-c027f0e4b9e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 802–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPushout.cancelBaseChangeAux_symm_tmul (s : S) (m : M) :
    (IsPushout.cancelBaseChangeAux R S A B M).symm (s ⊗ₜ m) = algebraMap S B s ⊗ₜ m := by
  simp [IsPushout.cancelBaseChangeAux, IsPushout.equiv_tmul]

/-- If `B = S ⊗[R] A`, this is the canonical `S`-isomorphism: `B ⊗[A] M ≃ₗ[S] S ⊗[R] M`.
This is the cancelling on the left version of
`TensorProduct.AlgebraTensorModule.cancelBaseChange`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean#L802).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915342d3b63e40411174a7257f149107258f9690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
