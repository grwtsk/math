# arithmetic_inverse_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db43daa8-81e9-9188-1eec-26f64a19e6e4",
  "kind": "theorem",
  "lexical_name": "arithmetic_inverse_split",
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
  "slug": "arithmetic-inverse-split--548844d5d8c40dfea0f8158e",
  "source": {
    "blob": "18dc4fb21cd5fb0bcc6d2beebccc2ac422b4c6ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 26,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:548844d5d8c40dfea0f8158e28ff4a7c447d0d176bc83f710de14334955e0cee",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db43daa8-81e9-9188-1eec-26f64a19e6e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_inverse_split {R : Type*} [CommRing R]
    (f g z : ArithmeticFunction R) (h : f * z = 1) :
    f = 2 * g - g * g * z + (f - g) * (f - g) * z := by
  have hdiag : f * f * z = f := by
    rw [mul_assoc, h, mul_one]
  have hcross : f * g * z = g := by
    calc
      f * g * z = (f * z) * g := by ring
      _ = g := by rw [h, one_mul]
  calc
    f = f * f * z - 2 * (f * g * z) + 2 * g := by
      rw [hdiag, hcross]
      ring
    _ = 2 * g - g * g * z + (f - g) * (f - g) * z := by ring

/-- The actual integer Mobius inverse gives the unconditional cutoff split. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18dc4fb21cd5fb0bcc6d2beebccc2ac422b4c6ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
