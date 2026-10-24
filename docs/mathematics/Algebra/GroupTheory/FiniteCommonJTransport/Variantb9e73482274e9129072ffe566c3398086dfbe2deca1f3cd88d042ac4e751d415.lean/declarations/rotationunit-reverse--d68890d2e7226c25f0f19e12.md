# rotationUnit_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d449ffb1-782c-6c82-750b-0bb481da93d0",
  "kind": "theorem",
  "lexical_name": "rotationUnit_reverse",
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
  "slug": "rotationunit-reverse--d68890d2e7226c25f0f19e12",
  "source": {
    "blob": "23eb42b83bf307c454f4a1811c2ef5aa4e74dc04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 215,
    "path": "GRWTSK/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68890d2e7226c25f0f19e124ee802406da0a44babd7fff45c8e5f8be51c6a8c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d449ffb1-782c-6c82-750b-0bb481da93d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotationUnit_reverse {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    (rotationUnit c s h)⁻¹ = rotationUnit c (-s) (circle_reverse c s h) := by
  apply Units.ext
  rfl

/-- The canonical sign flip on the two-plane; it exchanges the two coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23eb42b83bf307c454f4a1811c2ef5aa4e74dc04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
