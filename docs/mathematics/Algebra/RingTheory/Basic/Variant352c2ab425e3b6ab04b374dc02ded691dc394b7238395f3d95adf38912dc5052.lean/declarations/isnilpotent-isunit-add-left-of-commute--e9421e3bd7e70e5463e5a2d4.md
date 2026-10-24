# IsNilpotent.isUnit_add_left_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f8591c88e951a3f6c8bde4d2f1d39696ecf4292",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29cd0f12-6958-f543-b624-d7640474e3f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2587e38-71f4-7ccd-dcb2-d469a28eeb5f",
  "kind": "theorem",
  "lexical_name": "IsNilpotent.isUnit_add_left_of_commute",
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
  "slug": "isnilpotent-isunit-add-left-of-commute--e9421e3bd7e70e5463e5a2d4",
  "source": {
    "blob": "0f8591c88e951a3f6c8bde4d2f1d39696ecf4292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 83,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9421e3bd7e70e5463e5a2d4b57366879bebea55db14011f37414d1af2eeead0",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2587e38-71f4-7ccd-dcb2-d469a28eeb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNilpotent.isUnit_add_left_of_commute [Ring R] {r u : R}
    (hnil : IsNilpotent r) (hu : IsUnit u) (h_comm : Commute r u) :
    IsUnit (u + r) := by
  rw [← Units.isUnit_mul_units _ hu.unit⁻¹, add_mul, IsUnit.mul_val_inv]
  replace h_comm : Commute r (↑hu.unit⁻¹) := Commute.units_inv_right h_comm
  refine IsNilpotent.isUnit_one_add ?_
  exact (hu.unit⁻¹.isUnit.isNilpotent_mul_unit_of_commute_iff h_comm).mpr hnil

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f8591c88e951a3f6c8bde4d2f1d39696ecf4292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
