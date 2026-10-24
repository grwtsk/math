# eq_of_lower_eq_and_upper_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29265221-c2ea-1e24-0078-fa5aae37c906",
  "kind": "theorem",
  "lexical_name": "eq_of_lower_eq_and_upper_eq",
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
  "slug": "eq-of-lower-eq-and-upper-eq--b5621bcdd705345a730cae14",
  "source": {
    "blob": "ef379ff4cc53302062e090836f17f4df71e05a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5621bcdd705345a730cae147f4f77edfc46be0de7ec551f4143d0203728e5aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29265221-c2ea-1e24-0078-fa5aae37c906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_lower_eq_and_upper_eq {N : ℕ}
    {left right : TypeIIDyadicInterval N}
    (hlower : left.lower = right.lower)
    (hupper : left.upper = right.upper) :
    left = right := by
  have hleftWidth := left.lower_add_width
  have hrightWidth := right.lower_add_width
  have hleftUpper := left.upper_add_one
  have hrightUpper := right.upper_add_one
  have hwidth : left.width = right.width := by omega
  have hlevel : left.level = right.level := by
    apply Nat.pow_right_injective (by omega : 2 ≤ 2)
    simpa [width] using hwidth
  have hblock : left.block = right.block := by
    have hmul : left.block * left.width = right.block * left.width := by
      simpa [lower, hwidth] using hlower
    exact Nat.mul_right_cancel left.width_pos hmul
  apply Subtype.ext
  apply Prod.ext
  · apply Fin.ext
    exact hlevel
  · apply Fin.ext
    exact hblock

end TypeIIDyadicInterval

/-- The finite nonduplicative collection of all full dyadic intervals in the
scale window. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef379ff4cc53302062e090836f17f4df71e05a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
