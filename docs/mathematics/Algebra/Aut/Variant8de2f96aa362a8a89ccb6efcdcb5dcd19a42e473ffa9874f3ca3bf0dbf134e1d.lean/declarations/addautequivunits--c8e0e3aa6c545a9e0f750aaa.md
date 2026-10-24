# AddAutEquivUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:604c08a88ca83cbe1bb2a36a46de4b8435c31d3655ccc8447a53aa3b76ce5c39",
  "kind": "def",
  "lexical_name": "AddAutEquivUnits",
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
  "slug": "addautequivunits--c8e0e3aa6c545a9e0f750aaa",
  "source": {
    "blob": "22e13ca7cbb64cd322149979143406451f1c9dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/Algebra/Aut/Variant8de2f96aa362a8a89ccb6efcdcb5dcd19a42e473ffa9874f3ca3bf0dbf134e1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8e0e3aa6c545a9e0f750aaa3407d94e36119ac1bdf828b513c23f5b235cc5a7",
  "verification": {
    "reference": "docs/verification/Algebra/Aut/Variant8de2f96aa362a8a89ccb6efcdcb5dcd19a42e473ffa9874f3ca3bf0dbf134e1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:604c08a88ca83cbe1bb2a36a46de4b8435c31d3655ccc8447a53aa3b76ce5c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddAutEquivUnits : AddAut (ZMod n) ≃* (ZMod n)ˣ :=
  have h (f : AddAut (ZMod n)) (x : ZMod n) : f 1 * x = f x := by
    rw [mul_comm, ← x.intCast_zmod_cast, ← zsmul_eq_mul, ← map_zsmul, zsmul_one]
  { toFun := fun f ↦ Units.mkOfMulEqOne (f 1) (f⁻¹ 1) ((h f _).trans (f.inv_apply_self _ _))
    invFun := AddAut.mulLeft
    left_inv := fun f ↦ by simp [DFunLike.ext_iff, Units.smul_def, h]
    right_inv := fun x ↦ by simp [Units.ext_iff, Units.smul_def]
    map_mul' := fun f g ↦ by simp [Units.ext_iff, h] }

end ZMod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Aut/Variant8de2f96aa362a8a89ccb6efcdcb5dcd19a42e473ffa9874f3ca3bf0dbf134e1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Aut/Variant8de2f96aa362a8a89ccb6efcdcb5dcd19a42e473ffa9874f3ca3bf0dbf134e1d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22e13ca7cbb64cd322149979143406451f1c9dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
