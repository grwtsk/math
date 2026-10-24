# ShiftedPoleFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:991814b9b61480d0761cadc6445f70218a148bfecf949dd937b6b33b1b0b7601",
  "kind": "abbrev",
  "lexical_name": "ShiftedPoleFiber",
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
  "slug": "shiftedpolefiber--d20f99e21409a6d63a1d5b12",
  "source": {
    "blob": "db268f85f1f613fa368117b5982239e216f876b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 229,
    "path": "GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d20f99e21409a6d63a1d5b1267713cfcf8bf37d043bbd58ed5142718a55720af",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:991814b9b61480d0761cadc6445f70218a148bfecf949dd937b6b33b1b0b7601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ShiftedPoleFiber (r : ℂ) := AdjoinRoot ((X - C r) ^ 2)

/-- Its centered square-zero coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db268f85f1f613fa368117b5982239e216f876b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
