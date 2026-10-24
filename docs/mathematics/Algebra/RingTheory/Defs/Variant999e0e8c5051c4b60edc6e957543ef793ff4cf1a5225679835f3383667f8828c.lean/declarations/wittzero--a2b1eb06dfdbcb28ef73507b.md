# wittZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d34ac0695b427a1921c302b12e6c219c9e52b7671eb80fba0f918fa246b4a6d",
  "kind": "def",
  "lexical_name": "wittZero",
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
  "slug": "wittzero--a2b1eb06dfdbcb28ef73507b",
  "source": {
    "blob": "d0ed4f76ef10cb6501f11168ebbda152f901aea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 109,
    "path": "GRWTSK/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b1eb06dfdbcb28ef73507b66481f6ab7726c5509e6a36d0c6875f236c2a2e2",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d34ac0695b427a1921c302b12e6c219c9e52b7671eb80fba0f918fa246b4a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wittZero : ℕ → MvPolynomial (Fin 0 × ℕ) ℤ :=
  wittStructureInt p 0

/-- The polynomials used for defining the element `1` of the ring of Witt vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ed4f76ef10cb6501f11168ebbda152f901aea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
