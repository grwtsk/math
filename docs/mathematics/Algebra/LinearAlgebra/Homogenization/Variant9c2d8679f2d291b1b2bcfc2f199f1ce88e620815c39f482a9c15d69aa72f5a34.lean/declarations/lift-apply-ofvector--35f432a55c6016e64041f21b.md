# lift_apply_ofVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da2af34e-53ed-21a9-ed49-383055743c47",
  "kind": "theorem",
  "lexical_name": "lift_apply_ofVector",
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
  "slug": "lift-apply-ofvector--35f432a55c6016e64041f21b",
  "source": {
    "blob": "970ed3deaebc1ed258763a9f6e1de2606d0e7e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f432a55c6016e64041f21b58085e6383a996241995ee2f552f339ec5890920",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2af34e-53ed-21a9-ed49-383055743c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_apply_ofVector (f : P →ᵃ[R] W) (v : V) : lift f (ofVector v) = f.linear v := by
  obtain ⟨p⟩ : Nonempty P := inferInstance
  nth_rw 1 [← vadd_vsub v p]
  simp_rw [ofVector_vsub, map_sub, lift_apply_ofPoint, AffineMap.map_vadd, vadd_eq_add,
    add_sub_cancel_right]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970ed3deaebc1ed258763a9f6e1de2606d0e7e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
