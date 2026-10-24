# _root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleModule.Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.Module.End.instDivisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a11926a6fe6a1db1ed4d4e6ffda4928e6a4b43b6e95e6caded249d019e107e06",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleModule.Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.Module.End.instDivisionRing",
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
  "slug": "root-grwtsk-algebra-linearalgebra-issimplemodule-variant3406175c3fecb09c--82c7e1ec6a829f5fa634c289",
  "source": {
    "blob": "90f481d3934327f882eb7fe9f4db9d4008738109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 470,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c7e1ec6a829f5fa634c289c528b6218a32833c7654df534dacd3209b028120",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a11926a6fe6a1db1ed4d4e6ffda4928e6a4b43b6e95e6caded249d019e107e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance _root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleModule.Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.Module.End.instDivisionRing
    [DecidableEq (Module.End R M)] [IsSimpleModule R M] : DivisionRing (Module.End R M) where
  inv f := if h : f = 0 then 0 else (LinearEquiv.ofBijective _ <| bijective_of_ne_zero h).symm
  exists_pair_ne := ⟨0, 1, have := IsSimpleModule.nontrivial R M; zero_ne_one⟩
  mul_inv_cancel a a0 := by
    simp_rw [dif_neg a0]; ext
    exact (LinearEquiv.ofBijective _ <| bijective_of_ne_zero a0).right_inv _
  inv_zero := dif_pos rfl
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

end LinearMap

-- Porting note: adding a namespace with all the new statements; existing result is not used in ML3
namespace JordanHolderModule

-- Porting note: jordanHolderModule was timing out so outlining the fields

/-- An isomorphism `X₂ / X₁ ∩ X₂ ≅ Y₂ / Y₁ ∩ Y₂` of modules for pairs
`(X₁,X₂) (Y₁,Y₂) : Submodule R M` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f481d3934327f882eb7fe9f4db9d4008738109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
