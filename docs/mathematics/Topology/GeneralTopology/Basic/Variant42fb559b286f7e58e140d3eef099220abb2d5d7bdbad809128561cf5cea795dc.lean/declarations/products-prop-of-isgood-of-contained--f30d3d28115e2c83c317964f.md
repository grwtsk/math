# Products.prop_of_isGood_of_contained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af155b90-3fec-a4ad-b94a-b41f212af281",
  "kind": "theorem",
  "lexical_name": "Products.prop_of_isGood_of_contained",
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
  "slug": "products-prop-of-isgood-of-contained--f30d3d28115e2c83c317964f",
  "source": {
    "blob": "8b4928c820efb0d262bba745da216ca269b97e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 516,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f30d3d28115e2c83c317964fdd34ff9766c2ea150b3d8bd2073913cea886f3d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af155b90-3fec-a4ad-b94a-b41f212af281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Products.prop_of_isGood_of_contained {l : Products I} (o : Ordinal) (h : l.isGood C)
    (hsC : contained C o) (i : I) (hi : i ∈ l.val) : ord I i < o := by
  by_contra h'
  apply h
  suffices eval C l = 0 by simp [this, Submodule.zero_mem]
  ext x
  simp only [eval_eq, LocallyConstant.coe_zero, Pi.zero_apply, ite_eq_right_iff, one_ne_zero]
  contrapose! h'
  exact hsC x.val x.prop i (h'.1 i hi)

end Ordinal

section Maps
/-!
## `ℤ`-linear maps induced by projections

We define injective `ℤ`-linear maps between modules of the form `LocallyConstant C ℤ` induced by
precomposition with the projections defined in the section `Projections`.

### Main definitions

* `πs` and `πs'` are the `ℤ`-linear maps corresponding to `ProjRestrict` and `ProjRestricts`
  respectively.

### Main result

* We prove that `πs` and `πs'` interact well with `Products.eval` and the main application is the
  theorem `isGood_mono` which says that the property `isGood` is "monotone" on ordinals.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4928c820efb0d262bba745da216ca269b97e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
