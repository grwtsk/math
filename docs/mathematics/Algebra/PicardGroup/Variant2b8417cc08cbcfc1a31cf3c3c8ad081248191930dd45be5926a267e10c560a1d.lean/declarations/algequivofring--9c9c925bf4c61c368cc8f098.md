# algEquivOfRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4778c3f7f79098c62c5319b07d16583ce9ec3e6c9af55240d17efcea63a3f87d",
  "kind": "def",
  "lexical_name": "algEquivOfRing",
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
  "slug": "algequivofring--9c9c925bf4c61c368cc8f098",
  "source": {
    "blob": "6b4966598f5e62181e195c60e1f0d3fd47894705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 341,
    "path": "GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c9c925bf4c61c368cc8f0985855365f273e50170ae745f230d32dea6d0b1118",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4778c3f7f79098c62c5319b07d16583ce9ec3e6c9af55240d17efcea63a3f87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def algEquivOfRing : R ≃ₐ[R] A :=
  let inv : A →ₗ[R] R :=
    linearEquiv R A ∘ₗ
      (LinearMap.mul' R A).lTensor (Dual R A) ∘ₗ
      (leftCancelEquiv A (linearEquiv R A)).symm
  have right : inv ∘ₗ Algebra.linearMap R A = LinearMap.id :=
    let ⟨s, hs⟩ := exists_finset ((linearEquiv R A).symm 1)
    LinearMap.ext_ring <| by simp [inv, hs, sum_tmul, map_sum, ← (LinearEquiv.symm_apply_eq _).1 hs]
  { linearEquivOfRightInverse (f := Algebra.linearMap R A) (g := inv) (LinearMap.ext_iff.1 right),
    Algebra.ofId R A with }

variable {A} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4966598f5e62181e195c60e1f0d3fd47894705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
