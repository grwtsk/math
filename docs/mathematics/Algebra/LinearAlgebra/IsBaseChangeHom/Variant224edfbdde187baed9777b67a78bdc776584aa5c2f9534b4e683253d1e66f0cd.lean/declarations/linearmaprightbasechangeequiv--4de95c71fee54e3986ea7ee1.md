# linearMapRightBaseChangeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18531d58f16c56ea433a537bd71b22b4d1434b7ce440880150836f41d335c71d",
  "kind": "def",
  "lexical_name": "linearMapRightBaseChangeEquiv",
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
  "slug": "linearmaprightbasechangeequiv--4de95c71fee54e3986ea7ee1",
  "source": {
    "blob": "82c736ffceafe9db3669ee732cfc32ea9cd007f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4de95c71fee54e3986ea7ee10bd4d15c41e4a6af6096f04d001303e82178f3c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18531d58f16c56ea433a537bd71b22b4d1434b7ce440880150836f41d335c71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def linearMapRightBaseChangeEquiv
    {ε : N →ₗ[R] P} (ibc : IsBaseChange S ε) :
    S ⊗[R] (M →ₗ[R] N) ≃ₗ[S] (M →ₗ[R] P) := by
  apply LinearEquiv.ofBijective (linearMapRightBaseChangeHom S M ε)
  let b := Free.chooseBasis R M
  set ι := Free.ChooseBasisIndex R M
  have := Free.ChooseBasisIndex.fintype R M
  let e := (b.repr.congrLeft N R).trans (Finsupp.llift N R R ι).symm
  let f := (b.repr.congrLeft P S).trans (Finsupp.llift P R S ι).symm
  let h := linearMapRightBaseChangeHom S M ε
  let e' : S ⊗[R] (M →ₗ[R] N) ≃ₗ[S] S ⊗[R] (ι → N) :=
    LinearEquiv.baseChange R S (M →ₗ[R] N) (ι → N) e
  let h' := (f.toLinearMap.comp (linearMapRightBaseChangeHom S M ε)).comp e'.symm.toLinearMap
  suffices Function.Bijective h' by simpa [h'] using this
  suffices h' = (finitePow ι ibc).equiv by
    simp only [this]
    apply LinearEquiv.bijective
  suffices f.toLinearMap.comp (linearMapRightBaseChangeHom S M ε) =
      (finitePow ι ibc).equiv.toLinearMap.comp e'.toLinearMap by
    simp [h', this, ← LinearEquiv.trans_assoc e'.symm e']
  ext φ i
  simp
  simp [f, e', linearMapRightBaseChangeHom, LinearEquiv.baseChange, equiv_tmul,
    LinearEquiv.congrLeft, e]

/-- If `M` has a finite basis and `P` is a base change of `N` to `S`,
then `M →ₗ[R] P` is a base change of `M →ₗ[R] N` to `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c736ffceafe9db3669ee732cfc32ea9cd007f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
