# changeFormEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22c6b27fddfeb1293ce85b5fc5817255d4d199a5c207adc9718557f1022c9195",
  "kind": "def",
  "lexical_name": "changeFormEquiv",
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
  "slug": "changeformequiv--9ee1bb6b89a06d58209a7ad6",
  "source": {
    "blob": "b7124df1bb575a257c67b24294ca91a4d3242a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 381,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ee1bb6b89a06d58209a7ad647e6e37bd67ecc93b22c1f36f0dbb28cc9debb33",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22c6b27fddfeb1293ce85b5fc5817255d4d199a5c207adc9718557f1022c9195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeFormEquiv : CliffordAlgebra Q ≃ₗ[R] CliffordAlgebra Q' :=
  { changeForm h with
    toFun := changeForm h
    invFun := changeForm (changeForm.neg_proof h)
    left_inv := fun x => by
      dsimp only
      exact (changeForm_changeForm _ _ x).trans <| by simp_rw [add_right_neg, changeForm_self_apply]
    right_inv := fun x => by
      dsimp only
      exact (changeForm_changeForm _ _ x).trans <|
        by simp_rw [add_left_neg, changeForm_self_apply] }
#align clifford_algebra.change_form_equiv CliffordAlgebra.changeFormEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7124df1bb575a257c67b24294ca91a4d3242a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
