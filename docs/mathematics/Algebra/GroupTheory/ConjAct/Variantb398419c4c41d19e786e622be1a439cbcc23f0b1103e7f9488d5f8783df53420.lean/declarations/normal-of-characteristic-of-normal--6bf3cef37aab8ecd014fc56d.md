# normal_of_characteristic_of_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d520c7ff9b0d79a9ddfe120e3d86cf70852a13a0cb1596672076af45428b833",
  "kind": "instance",
  "lexical_name": "normal_of_characteristic_of_normal",
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
  "slug": "normal-of-characteristic-of-normal--6bf3cef37aab8ecd014fc56d",
  "source": {
    "blob": "679f974058ac13750b3829bbe9a8fc6e4ad68ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 371,
    "path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bf3cef37aab8ecd014fc56d11ef0b26c533dcb5faa1e59c7668d2fac136f9c3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d520c7ff9b0d79a9ddfe120e3d86cf70852a13a0cb1596672076af45428b833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normal_of_characteristic_of_normal {H : Subgroup G} [hH : H.Normal] {K : Subgroup H}
    [h : K.Characteristic] : (K.map H.subtype).Normal :=
  ⟨fun a ha b => by
    obtain ⟨a, ha, rfl⟩ := ha
    exact K.apply_coe_mem_map H.subtype
      ⟨_, (SetLike.ext_iff.mp (h.fixed (MulAut.conjNormal b)) a).mpr ha⟩⟩
#align conj_act.normal_of_characteristic_of_normal ConjAct.normal_of_characteristic_of_normal

end ConjAct

section Units

variable [Monoid M]

/-- The stabilizer of `Mˣ` acting on itself by conjugation at `x : Mˣ` is exactly the
units of the centralizer of `x : M`. -/
@[simps! apply_coe_val symm_apply_val_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679f974058ac13750b3829bbe9a8fc6e4ad68ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
