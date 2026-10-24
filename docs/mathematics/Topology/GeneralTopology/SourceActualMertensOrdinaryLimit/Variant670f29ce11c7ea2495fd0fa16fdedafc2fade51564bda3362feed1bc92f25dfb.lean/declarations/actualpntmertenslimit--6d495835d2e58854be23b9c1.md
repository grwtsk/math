# actualPntMertensLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8c8e368586a0a2065f57d9812197384015709b4c6e345e9cb809ebfc5dc44ed",
  "kind": "def",
  "lexical_name": "actualPntMertensLimit",
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
  "slug": "actualpntmertenslimit--6d495835d2e58854be23b9c1",
  "source": {
    "blob": "d8329c96419680b4fbf862e0e85adc28d267ee3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant670f29ce11c7ea2495fd0fa16fdedafc2fade51564bda3362feed1bc92f25dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d495835d2e58854be23b9c12c44a0b92a9353531bda292e4ffa6ef200cf8c52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant670f29ce11c7ea2495fd0fa16fdedafc2fade51564bda3362feed1bc92f25dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8c8e368586a0a2065f57d9812197384015709b4c6e345e9cb809ebfc5dc44ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualPntMertensLimit : ℝ := 1 +
  ∫ r in Ioi 0, SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r

/-- The two literal actual-error definitions agree at every real time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant670f29ce11c7ea2495fd0fa16fdedafc2fade51564bda3362feed1bc92f25dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant670f29ce11c7ea2495fd0fa16fdedafc2fade51564bda3362feed1bc92f25dfb.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8329c96419680b4fbf862e0e85adc28d267ee3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
