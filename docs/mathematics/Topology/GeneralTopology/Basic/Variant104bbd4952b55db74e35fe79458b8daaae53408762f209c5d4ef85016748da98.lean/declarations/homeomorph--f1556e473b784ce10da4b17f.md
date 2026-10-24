# homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b348020484bc22ab9d538c92b7bf3deff3a563f04c1708dfc2b1fd79979c228c",
  "kind": "def",
  "lexical_name": "homeomorph",
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
  "slug": "homeomorph--f1556e473b784ce10da4b17f",
  "source": {
    "blob": "9b3192f6515fcdddcc2f8506f687d2528cd58397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 464,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant104bbd4952b55db74e35fe79458b8daaae53408762f209c5d4ef85016748da98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1556e473b784ce10da4b17f71cae3940c08493cd3c9bae4326ccef0550d305a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant104bbd4952b55db74e35fe79458b8daaae53408762f209c5d4ef85016748da98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b348020484bc22ab9d538c92b7bf3deff3a563f04c1708dfc2b1fd79979c228c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homeomorph (hf : IsQuotientMap f) : Quotient (Setoid.ker f) ≃ₜ Y where
  toEquiv := Setoid.quotientKerEquivOfSurjective _ hf.surjective
  continuous_toFun := isQuotientMap_quot_mk.continuous_iff.mpr hf.continuous
  continuous_invFun := by
    rw [hf.continuous_iff]
    convert! continuous_quotient_mk'
    ext
    simp only [Equiv.invFun_as_coe, Function.comp_apply,
      (Setoid.quotientKerEquivOfSurjective f hf.surjective).symm_apply_eq]
    rfl

variable (hf : IsQuotientMap f) (g : C(X, Z)) (h : Function.FactorsThrough g f)

/-- Descend a continuous map, which is constant on the fibres, along a quotient map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant104bbd4952b55db74e35fe79458b8daaae53408762f209c5d4ef85016748da98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant104bbd4952b55db74e35fe79458b8daaae53408762f209c5d4ef85016748da98.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3192f6515fcdddcc2f8506f687d2528cd58397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
