# totalBoundaryCopies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0040b0cf71a1b09f5e38344acf5e857d48fa6b473d1e73f04224dd7a195a6f26",
  "kind": "def",
  "lexical_name": "totalBoundaryCopies",
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
  "slug": "totalboundarycopies--5da443d7f402bf97c1be08ae",
  "source": {
    "blob": "f1ad1790f19d98e40c4ef0f70ebe018b992a937b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5da443d7f402bf97c1be08ae53c1917fbcc78cc4f1473bfe376fad0e4d1b94f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0040b0cf71a1b09f5e38344acf5e857d48fa6b473d1e73f04224dd7a195a6f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def totalBoundaryCopies (copies : V → ℕ) : ℕ := ∑ v, copies v

/-- Intrinsic angle accounting, defined before comparison with flat turns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ad1790f19d98e40c4ef0f70ebe018b992a937b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
