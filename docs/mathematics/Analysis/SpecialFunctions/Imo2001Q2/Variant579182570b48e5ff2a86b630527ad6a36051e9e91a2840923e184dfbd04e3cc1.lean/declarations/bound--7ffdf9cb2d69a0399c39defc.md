# bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a555e70-c82c-c9ba-aefb-98c5a94bca3e",
  "kind": "theorem",
  "lexical_name": "bound",
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
  "slug": "bound--7ffdf9cb2d69a0399c39defc",
  "source": {
    "blob": "910f819a24e8fe2aa5b28324a3da56e30dcb3a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 43,
    "path": "GRWTSK/Analysis/SpecialFunctions/Imo2001Q2/Variant579182570b48e5ff2a86b630527ad6a36051e9e91a2840923e184dfbd04e3cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ffdf9cb2d69a0399c39defc977ebb6e91e2bccc7c04140e62937d66056a165d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Imo2001Q2/Variant579182570b48e5ff2a86b630527ad6a36051e9e91a2840923e184dfbd04e3cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a555e70-c82c-c9ba-aefb-98c5a94bca3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    a ^ 4 / (a ^ 4 + b ^ 4 + c ^ 4) ≤ a ^ 3 / sqrt ((a ^ 3) ^ 2 + ↑8 * b ^ 3 * c ^ 3) := by
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  calc a ^ 4 * sqrt ((a ^ 3) ^ 2 + (8:ℝ) * b ^ 3 * c ^ 3)
      = a ^ 3 * (a * sqrt ((a ^ 3) ^ 2 + (8:ℝ) * b ^ 3 * c ^ 3)) := by ring
    _ ≤ a ^ 3 * (a ^ 4 + b ^ 4 + c ^ 4) := ?_
  gcongr
  apply le_of_pow_le_pow_left₀ two_ne_zero (by positivity)
  rw [mul_pow, sq_sqrt (by positivity), ← sub_nonneg]
  calc
    (a ^ 4 + b ^ 4 + c ^ 4) ^ 2 - a ^ 2 * ((a ^ 3) ^ 2 + 8 * b ^ 3 * c ^ 3)
      = 2 * (a ^ 2 * (b ^ 2 - c ^ 2)) ^ 2 + (b ^ 4 - c ^ 4) ^ 2 +
        (2 * (a ^ 2 * b * c - b ^ 2 * c ^ 2)) ^ 2 := by ring
    _ ≥ 0 := by positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Imo2001Q2/Variant579182570b48e5ff2a86b630527ad6a36051e9e91a2840923e184dfbd04e3cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Imo2001Q2/Variant579182570b48e5ff2a86b630527ad6a36051e9e91a2840923e184dfbd04e3cc1.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `910f819a24e8fe2aa5b28324a3da56e30dcb3a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
