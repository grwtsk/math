# lt_mul_exp_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6e154a5-ce9d-4fc4-c60d-9765328d5c6a",
  "kind": "lemma",
  "lexical_name": "lt_mul_exp_iff_le",
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
  "slug": "lt-mul-exp-iff-le--a7463121fd940de63979bb08",
  "source": {
    "blob": "212a96fc993b5c05a754ffc6305a15d78f693621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 588,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7463121fd940de63979bb08d442a33381ce2f9455b0df3b9984a51d437906c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6e154a5-ce9d-4fc4-c60d-9765328d5c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lt_mul_exp_iff_le {x y : ℤᵐ⁰} (hy : y ≠ 0) : x < y * exp 1 ↔ x ≤ y := by
  lift y to Multiplicative ℤ using hy
  obtain rfl | hx := eq_or_ne x 0
  · simp
  lift x to Multiplicative ℤ using hx
  rw [← log_le_log, ← log_lt_log] <;> simp [log_mul, Int.lt_add_one_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `212a96fc993b5c05a754ffc6305a15d78f693621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
