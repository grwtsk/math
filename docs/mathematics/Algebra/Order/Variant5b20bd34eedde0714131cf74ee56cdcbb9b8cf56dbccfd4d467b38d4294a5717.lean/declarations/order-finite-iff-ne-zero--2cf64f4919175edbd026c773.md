# order_finite_iff_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:952f4ba2-1ae6-b568-2663-1e1ce84a0b20",
  "kind": "theorem",
  "lexical_name": "order_finite_iff_ne_zero",
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
  "slug": "order-finite-iff-ne-zero--2cf64f4919175edbd026c773",
  "source": {
    "blob": "c98c0336347e11facf751562f35c6835ac27b186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf64f4919175edbd026c7739c54d41639fbbd3e76e5517392556443fce549aa",
  "verification": {
    "reference": "docs/verification/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:952f4ba2-1ae6-b568-2663-1e1ce84a0b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_finite_iff_ne_zero : (order φ < ⊤) ↔ φ ≠ 0 := by
  simp only [order]
  split_ifs with h <;> simpa

/-- The `0` power series is the unique power series with infinite order. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98c0336347e11facf751562f35c6835ac27b186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
