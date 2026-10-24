# Algebra.IsAlgebraic.tower_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:020f8d5f-2a50-507c-a3f8-9bffac76e466",
  "kind": "theorem",
  "lexical_name": "Algebra.IsAlgebraic.tower_top",
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
  "slug": "algebra-isalgebraic-tower-top--2b42b2832dc8c63f1a32c582",
  "source": {
    "blob": "73b7d5a96117be596f110dbb2bec3f5ebca97c98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 482,
    "path": "GRWTSK/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b42b2832dc8c63f1a32c58292a7ab9eb7963ac1c2def7d70f3711b9a395ab2d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020f8d5f-2a50-507c-a3f8-9bffac76e466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.IsAlgebraic.tower_top [Algebra.IsAlgebraic K A] : Algebra.IsAlgebraic L A :=
  Algebra.IsAlgebraic.extendScalars (algebraMap K L).injective

variable (K) (A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b7d5a96117be596f110dbb2bec3f5ebca97c98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
