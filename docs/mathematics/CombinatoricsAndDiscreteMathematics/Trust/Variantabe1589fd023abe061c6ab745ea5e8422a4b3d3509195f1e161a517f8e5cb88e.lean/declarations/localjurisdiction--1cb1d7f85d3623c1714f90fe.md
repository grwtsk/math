# LocalJurisdiction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae9dbc4f3895273b055136d6fdac51ee7b0b5ebd1631e1aee8c4bd6e99c3578e",
  "kind": "structure",
  "lexical_name": "LocalJurisdiction",
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
  "slug": "localjurisdiction--1cb1d7f85d3623c1714f90fe",
  "source": {
    "blob": "fb7803680cad589a8ce40c04dba6a70897b10a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trust/Variantabe1589fd023abe061c6ab745ea5e8422a4b3d3509195f1e161a517f8e5cb88e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cb1d7f85d3623c1714f90fec6a358fef0137feaf73d3c0880a7e8d1580e2e45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trust/Variantabe1589fd023abe061c6ab745ea5e8422a4b3d3509195f1e161a517f8e5cb88e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae9dbc4f3895273b055136d6fdac51ee7b0b5ebd1631e1aee8c4bd6e99c3578e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalJurisdiction (Certificate : Type*) where
  /-- Immutable target identity of this checker. -/
  targetIdentity : String
  /-- Object-level meaning checked locally. -/
  statement : Prop
  /-- Exact local checking function. -/
  accepts : Certificate → Bool
  /-- Soundness is a Lean proof, not runtime metadata or a phase flag. -/
  sound : ∀ certificate, accepts certificate = true → statement

/-- An operational local replay result retains certificate, dependencies, and provenance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trust/Variantabe1589fd023abe061c6ab745ea5e8422a4b3d3509195f1e161a517f8e5cb88e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trust/Variantabe1589fd023abe061c6ab745ea5e8422a4b3d3509195f1e161a517f8e5cb88e.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb7803680cad589a8ce40c04dba6a70897b10a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
