# forward_ones_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6084c802-9687-c9c4-439b-59e74ffd4176",
  "kind": "theorem",
  "lexical_name": "forward_ones_height",
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
  "slug": "forward-ones-height--41678d5d838b424f89b62a86",
  "source": {
    "blob": "ca6125fb40ad765b2c5061f856974228c7a5b6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41678d5d838b424f89b62a865bdaf809db97d0b1f754754528dd844317a9a619",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6084c802-9687-c9c4-439b-59e74ffd4176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forward_ones_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    sourceHeight k (fun _ => 1) = 1 ∧
    targetHeight k (combinedQ a b k (fun _ => 1)) = forwardFactor a b k := by
  have hD : denominator (fun _ : Slot k => (1 : ℚ)) = 1 := by
    simpa using denominator_int (fun _ : Slot k => (1 : ℤ))
  have hJ : denominator (rawCoordinates k (combinedQ a b k (fun _ => 1))) = 1 := by
    apply Nat.dvd_one.mp
    simpa only [hD] using denominator_forward a b k (fun _ => 1)
  constructor
  · simp [sourceHeight, height, hD]
  · change (denominator (rawCoordinates k (combinedQ a b k (fun _ => 1))) : ℚ) *
      max 1 (targetMax k (combinedQ a b k (fun _ => 1))) = _
    rw [hJ, forward_ones a b hab k, max_eq_right (forwardFactor_one_le a b hab k)]
    simp

/-- Height-one RAW target. Its two reciprocal columns force the full inverse denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca6125fb40ad765b2c5061f856974228c7a5b6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
