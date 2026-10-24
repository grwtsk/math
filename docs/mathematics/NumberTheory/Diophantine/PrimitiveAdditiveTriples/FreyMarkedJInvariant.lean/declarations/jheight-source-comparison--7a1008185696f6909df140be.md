# jHeight_source_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad33014b-0900-2c7a-1ee5-6162799e9c5b",
  "kind": "theorem",
  "lexical_name": "jHeight_source_comparison",
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
  "slug": "jheight-source-comparison--7a1008185696f6909df140be",
  "source": {
    "blob": "35e6cef52e446675f7f78ed25cc1ac61514df481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 195,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a1008185696f6909df140be50835a59d3869ba5dda1bbbe6719703bad7e0ee4",
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

Occurrence: `result:ad33014b-0900-2c7a-1ee5-6162799e9c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jHeight_source_comparison (t : PrimitiveAdditiveTriple) :
    (27/64 : ℚ)*(t.c : ℚ)^6 ≤ jHeight t ∧
      jHeight t ≤ 256*(t.c : ℚ)^6 := by
  have hlow : (3*(t.c : ℚ)^2/4)^3 ≤ (shape t : ℚ)^3 := by
    gcongr
    linarith [(shape_bounds t).1]
  have hupp : (shape t : ℚ)^3 ≤ ((t.c : ℚ)^2)^3 := by
    gcongr
    exact (shape_bounds t).2
  constructor
  · calc
      (27/64 : ℚ)*(t.c : ℚ)^6 = (3*(t.c : ℚ)^2/4)^3 := by ring
      _ ≤ (shape t : ℚ)^3 := hlow
      _ ≤ jHeight t := (jHeight_shape_bounds t).1
  · calc
      jHeight t ≤ 256*(shape t : ℚ)^3 := (jHeight_shape_bounds t).2
      _ ≤ 256*((t.c : ℚ)^2)^3 := mul_le_mul_of_nonneg_left hupp (by norm_num)
      _ = 256*(t.c : ℚ)^6 := by ring

/-- The two pre-existing height constructions are now compared, not identified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e6cef52e446675f7f78ed25cc1ac61514df481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
