# DyadicCellCode.structuredSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a702941b3822f4f3bbe83d1b7267bc84be59547c8800b16fc09ddf0e78b572be",
  "kind": "def",
  "lexical_name": "DyadicCellCode.structuredSubspace",
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
  "slug": "dyadiccellcode-structuredsubspace--f47eeed974c5772fbc614c49",
  "source": {
    "blob": "559fbf67a0f035c0eeb31aec5337ef6a1fc31146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f47eeed974c5772fbc614c49239a04a2c0024323e441657a19b694e1dce71191",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a702941b3822f4f3bbe83d1b7267bc84be59547c8800b16fc09ddf0e78b572be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DyadicCellCode.structuredSubspace
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    Submodule ℂ (EuclideanSpace ℂ Index) :=
  Submodule.span ℂ (Set.range code.indicator)

/-- Orthogonal conditional expectation onto dyadic-cell constants. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559fbf67a0f035c0eeb31aec5337ef6a1fc31146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
