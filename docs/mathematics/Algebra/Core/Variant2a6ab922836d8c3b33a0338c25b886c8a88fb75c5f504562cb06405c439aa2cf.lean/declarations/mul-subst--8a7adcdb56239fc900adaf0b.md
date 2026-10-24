# mul_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838b8622-37e4-9c4c-5577-b746079a2014",
  "kind": "theorem",
  "lexical_name": "mul_subst",
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
  "slug": "mul-subst--8a7adcdb56239fc900adaf0b",
  "source": {
    "blob": "ffed805cd836b2ba102cfcd4e8d79a6078a3425d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a7adcdb56239fc900adaf0bd560786dd6a418dbd523bf074f35e3d1d43f11a6",
  "verification": {
    "reference": "docs/verification/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838b8622-37e4-9c4c-5577-b746079a2014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_subst {α} [CommRing α] {n1 n2 k e1 e2 t1 t2 : α}
    (h1 : n1 * e1 = t1) (h2 : n2 * e2 = t2) (h3 : n1 * n2 = k) : k * (e1 * e2) = t1 * t2 := by
  rw [← h3, mul_comm n1, mul_assoc n2, ← mul_assoc n1, h1,
      ← mul_assoc n2, mul_comm n2, mul_assoc, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffed805cd836b2ba102cfcd4e8d79a6078a3425d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
