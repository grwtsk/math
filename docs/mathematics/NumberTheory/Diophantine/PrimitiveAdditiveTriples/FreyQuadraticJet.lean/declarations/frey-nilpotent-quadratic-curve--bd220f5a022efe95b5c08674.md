# frey_nilpotent_quadratic_curve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:358ac3fe-7cc3-b144-aa3e-919a5b1a3a55",
  "kind": "theorem",
  "lexical_name": "frey_nilpotent_quadratic_curve",
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
  "slug": "frey-nilpotent-quadratic-curve--bd220f5a022efe95b5c08674",
  "source": {
    "blob": "98bafa6013820f49daa306e1dda04dd52056bec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd220f5a022efe95b5c08674a3115a4e5a66f809a65bfb836348d666a7a19d04",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:358ac3fe-7cc3-b144-aa3e-919a5b1a3a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frey_nilpotent_quadratic_curve {A : Type*} [CommRing A]
    (a b r j e : A) (hr : r * (r - a) * (r + b) = 0)
    (hj : (3 * r ^ 2 + 2 * (b - a) * r - a * b) * j = 1)
    (he : e ^ 3 = 0) :
    (r + j * e ^ 2) * (r + j * e ^ 2 - a) * (r + j * e ^ 2 + b) = e ^ 2 := by
  have he4 : e ^ 4 = 0 := by
    calc
      e ^ 4 = e ^ 3 * e := by ring
      _ = 0 := by rw [he]; ring
  have he6 : e ^ 6 = 0 := by
    calc
      e ^ 6 = (e ^ 3) ^ 2 := by ring
      _ = 0 := by rw [he]; ring
  calc
    (r + j * e ^ 2) * (r + j * e ^ 2 - a) * (r + j * e ^ 2 + b) =
        r * (r - a) * (r + b) +
        (3 * r ^ 2 + 2 * (b - a) * r - a * b) * j * e ^ 2 +
        (3 * r + b - a) * j ^ 2 * e ^ 4 + j ^ 3 * e ^ 6 := by ring
    _ = e ^ 2 := by rw [hr, hj, he4, he6]; ring

/-- The x coordinate of the exact order-two jet with local parameter y. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bafa6013820f49daa306e1dda04dd52056bec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
