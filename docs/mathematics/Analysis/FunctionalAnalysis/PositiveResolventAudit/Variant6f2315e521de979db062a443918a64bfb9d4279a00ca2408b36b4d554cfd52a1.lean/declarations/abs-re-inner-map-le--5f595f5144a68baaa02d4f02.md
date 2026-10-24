# abs_re_inner_map_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66617665-2a28-334c-1596-ffb1c431609e",
  "kind": "theorem",
  "lexical_name": "abs_re_inner_map_le",
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
  "slug": "abs-re-inner-map-le--5f595f5144a68baaa02d4f02",
  "source": {
    "blob": "46b7354401615869a74b82e53e64512fddf54ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f595f5144a68baaa02d4f02f2c7a02bacabd9628812f7c9633bf058f7c9862c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66617665-2a28-334c-1596-ffb1c431609e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_re_inner_map_le (A : E →L[ℂ] E) (r : E) :
    |(inner ℂ r (A r)).re| ≤ ‖r‖ ^ 2 * ‖A‖ := by
  calc
    _ ≤ ‖inner ℂ r (A r)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖r‖ * ‖A r‖ := norm_inner_le_norm _ _
    _ ≤ ‖r‖ * (‖A‖ * ‖r‖) := mul_le_mul_of_nonneg_left (A.le_opNorm r) (norm_nonneg _)
    _ = ‖r‖ ^ 2 * ‖A‖ := by ring

/-- The parameter-scaled directional error loses only one power of alpha. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46b7354401615869a74b82e53e64512fddf54ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
