# sqrt_mul_lt_half_add_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c08c90-2a17-ff01-3212-576fe575bf22",
  "kind": "lemma",
  "lexical_name": "sqrt_mul_lt_half_add_of_ne",
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
  "slug": "sqrt-mul-lt-half-add-of-ne--351b8c38260f4f99561a3448",
  "source": {
    "blob": "c8a163119ef039c04c2a0321c1330ee2df20063d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:351b8c38260f4f99561a344891ca4fee58d5b8b374288dba1209b7f18e254a33",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c08c90-2a17-ff01-3212-576fe575bf22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_mul_lt_half_add_of_ne {x y : ℝ≥0} (h : x ≠ y) : sqrt (x * y) < (x + y) / 2 := by
  wlog hl : y < x generalizing x y
  · specialize this h.symm (h.gt_or_lt.resolve_left hl)
    rwa [mul_comm, add_comm]
  have key : 0 < (x - y) ^ 2 := sq_pos_iff.mpr (by rwa [← zero_lt_iff, tsub_pos_iff_lt])
  rw [sq, tsub_mul, mul_tsub, mul_tsub, tsub_tsub_eq_add_tsub_of_le (by gcongr),
    tsub_add_eq_add_tsub (by gcongr), tsub_tsub, show x * y + y * x = 2 * x * y by ring,
    tsub_pos_iff_lt, ← sq, ← sq] at key
  rw [← sqrt_sq (_ / 2), sqrt_lt_sqrt, div_pow, lt_div_iff₀' (by positivity),
    show (2 : ℝ≥0) ^ 2 * (x * y) = 2 * x * y + 2 * x * y by ring, add_sq, add_right_comm]
  gcongr

open Function Filter

open scoped Topology

/-- `agmSequences x y` is the sequence of (geometric, arithmetic) means
converging to the arithmetic-geometric mean starting from `x` and `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a163119ef039c04c2a0321c1330ee2df20063d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
