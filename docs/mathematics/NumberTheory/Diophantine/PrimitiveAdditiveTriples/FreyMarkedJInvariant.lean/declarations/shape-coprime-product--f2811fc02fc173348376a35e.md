# shape_coprime_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7d50cc8-dc59-de12-d689-fa6153d792c6",
  "kind": "theorem",
  "lexical_name": "shape_coprime_product",
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
  "slug": "shape-coprime-product--f2811fc02fc173348376a35e",
  "source": {
    "blob": "35e6cef52e446675f7f78ed25cc1ac61514df481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2811fc02fc173348376a35ebffdc08500ada42430d2bcb1c9a901df799da9ae",
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

Occurrence: `result:f7d50cc8-dc59-de12-d689-fa6153d792c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shape_coprime_product (t : PrimitiveAdditiveTriple) :
    Nat.Coprime (shape t) (sourceProduct t) := by
  have ha : Nat.Coprime t.a (shape t) := by
    have he : shape t = t.b^2 + (t.a+t.b)*t.a := by unfold shape; ring
    rw [he, Nat.coprime_add_mul_right_right]
    exact t.coprime_ab.pow_right 2
  have hb : Nat.Coprime t.b (shape t) := by
    have he : shape t = t.a^2 + (t.a+t.b)*t.b := by unfold shape; ring
    rw [he, Nat.coprime_add_mul_right_right]
    exact t.coprime_ab.symm.pow_right 2
  have hc : Nat.Coprime t.c (shape t) := by
    have he : shape t = t.a^2 + t.b*t.c := by
      rw [← t.sum_eq]; unfold shape; ring
    rw [he, Nat.coprime_add_mul_right_right]
    exact t.coprime_ac.symm.pow_right 2
  exact (ha.symm.mul_right hb.symm).mul_right hc.symm

/-- No odd prime from abc cancels against the quadratic numerator factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e6cef52e446675f7f78ed25cc1ac61514df481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
