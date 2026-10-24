# isIntegral_exp_rat_mul_pi_mul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:227881e1-20f1-ad11-c1dc-2ed91c077c02",
  "kind": "theorem",
  "lexical_name": "isIntegral_exp_rat_mul_pi_mul_I",
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
  "slug": "isintegral-exp-rat-mul-pi-mul-i--671e1e66e215b642da9275c4",
  "source": {
    "blob": "2db52456dd248203fb6210e685f1c59cdce46234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:671e1e66e215b642da9275c4ac119d1bfd330a7b332605d288683f8fcd3385a1",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:227881e1-20f1-ad11-c1dc-2ed91c077c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_exp_rat_mul_pi_mul_I (q : ℚ) : IsIntegral ℤ <| exp <| q * π * I := by
  refine .of_pow (Nat.mul_pos zero_lt_two q.den_pos) ?_
  exact exp_rat_mul_pi_mul_I_pow_two_mul_den _ ▸ isIntegral_one

/-- `exp(-(q * π) * I)` for `q : ℚ` is integral over `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2db52456dd248203fb6210e685f1c59cdce46234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
