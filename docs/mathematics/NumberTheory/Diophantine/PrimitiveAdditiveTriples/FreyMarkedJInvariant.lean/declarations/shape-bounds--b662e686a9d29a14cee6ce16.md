# shape_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3350a67-7fb9-42de-6845-139e66262297",
  "kind": "theorem",
  "lexical_name": "shape_bounds",
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
  "slug": "shape-bounds--b662e686a9d29a14cee6ce16",
  "source": {
    "blob": "35e6cef52e446675f7f78ed25cc1ac61514df481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b662e686a9d29a14cee6ce1654a44de6f3c3b3cbb35feddaca9e782ecf4b9c13",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3350a67-7fb9-42de-6845-139e66262297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shape_bounds (t : PrimitiveAdditiveTriple) :
    3*(t.c : ℚ)^2 ≤ 4*(shape t : ℚ) ∧ (shape t : ℚ) ≤ (t.c : ℚ)^2 := by
  have hs : (t.a : ℚ)+(t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  have hcast : (shape t : ℚ) = (t.a : ℚ)^2+(t.a : ℚ)*(t.b : ℚ)+(t.b : ℚ)^2 := by
    simp [shape]
  have hab : (0 : ℚ) ≤ (t.a : ℚ)*(t.b : ℚ) := by positivity
  rw [← hs, hcast]
  constructor <;> nlinarith [sq_nonneg ((t.a : ℚ)-(t.b : ℚ))]

/-- An actual unmarked j-height comparison, with explicit constants and degree SIX.
This does not estimate c by radical support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e6cef52e446675f7f78ed25cc1ac61514df481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
