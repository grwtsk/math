# rTensor.toFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:898fada47467f9ee93931848ccc2fabdafa73cef409a3e217e46fba1931fd799",
  "kind": "def",
  "lexical_name": "rTensor.toFun",
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
  "slug": "rtensor-tofun--5c81ccfd79f7e74598ccd380",
  "source": {
    "blob": "b1dc5533a78a54da60f8f336052f02e6c1a67f6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 314,
    "path": "GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c81ccfd79f7e74598ccd380522df50eaa99e8a583fd98ad66abcf6317b33d3a",
  "verification": {
    "reference": "docs/verification/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:898fada47467f9ee93931848ccc2fabdafa73cef409a3e217e46fba1931fd799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rTensor.toFun (hfg : Exact f g) :
    N ⊗[R] Q ⧸ range (rTensor Q f) →ₗ[R] P ⊗[R] Q :=
  Submodule.liftQ _ (rTensor Q g) <| by
    rw [range_le_iff_comap, ← ker_comp, ← rTensor_comp,
      hfg.linearMap_comp_eq_zero, rTensor_zero, ker_zero]

/-- The inverse map in `rTensor.equiv_of_rightInverse` (computably, given a right inverse) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1dc5533a78a54da60f8f336052f02e6c1a67f6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
