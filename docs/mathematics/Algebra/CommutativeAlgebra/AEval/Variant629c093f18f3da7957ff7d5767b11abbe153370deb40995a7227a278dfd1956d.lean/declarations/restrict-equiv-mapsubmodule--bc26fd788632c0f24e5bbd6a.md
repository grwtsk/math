# restrict_equiv_mapSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:076c6fc4602291eeef9fd3d001a31e704c14fd60f6689b4de83909994adac53d",
  "kind": "def",
  "lexical_name": "restrict_equiv_mapSubmodule",
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
  "slug": "restrict-equiv-mapsubmodule--bc26fd788632c0f24e5bbd6a",
  "source": {
    "blob": "35d5eee323d63cd154a91f5820a4b79f9d744306",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 175,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc26fd788632c0f24e5bbd6a00884ea30b85d7f514142498a4c09a2edf41abee",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:076c6fc4602291eeef9fd3d001a31e704c14fd60f6689b4de83909994adac53d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrict_equiv_mapSubmodule :
    (AEval R p <| (Algebra.lsmul R R M a).restrict hp) ≃ₗ[R[X]] mapSubmodule R M a ⟨p, hp⟩ :=
  LinearEquiv.ofAEval ((Algebra.lsmul R R M a).restrict hp) (equiv_mapSubmodule a p hp)
    (fun x ↦ by simp [equiv_mapSubmodule, X_smul_of])

end Submodule

end AEval

variable (φ : M →ₗ[R] M)
/--
Given and `R`-module `M` and a linear map `φ : M →ₗ[R] M`, `Module.AEval' φ` is loosely speaking
the `R[X]`-module with elements `m : M`, where the action of a polynomial $f$ is given by
$f • m = f(a) • m$.

More precisely, `Module.AEval' φ` has elements `Module.AEval'.of φ m` for `m : M`,
and the action of `f` is `f • (of φ m) = of φ ((aeval φ f) • m)`.

`Module.AEval'` is defined as a special case of `Module.AEval` in which the `R`-algebra is
`M →ₗ[R] M`. Lemmas involving `Module.AEval` may be applied to `Module.AEval'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d5eee323d63cd154a91f5820a4b79f9d744306` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
