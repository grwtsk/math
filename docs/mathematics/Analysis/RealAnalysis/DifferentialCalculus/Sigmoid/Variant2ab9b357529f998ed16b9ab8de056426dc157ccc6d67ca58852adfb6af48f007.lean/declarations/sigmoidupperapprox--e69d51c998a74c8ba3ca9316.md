# sigmoidUpperApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c5c85f94ec07f870df3f033ac227bfbeb027634af313c5470e7d1ea8f140d19",
  "kind": "def",
  "lexical_name": "sigmoidUpperApprox",
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
  "slug": "sigmoidupperapprox--e69d51c998a74c8ba3ca9316",
  "source": {
    "blob": "161e5e5e8b90fdeab7fec71e04c5b9395868b098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e69d51c998a74c8ba3ca931624ac9a6c8b84bb1100791e12dfb0b19e86caa430",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c5c85f94ec07f870df3f033ac227bfbeb027634af313c5470e7d1ea8f140d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmoidUpperApprox (x : ℚ) : ℚ :=
  if x ≤ -4 then 1/10
  else if x ≤ -2 then 3/10
  else if x ≤ 0 then 1/2
  else if x ≤ 2 then 3/4
  else if x ≤ 4 then 9/10
  else if x ≤ 6 then 99/100
  else 1

/-- Computable sigmoid relaxation for interval propagation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `161e5e5e8b90fdeab7fec71e04c5b9395868b098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
