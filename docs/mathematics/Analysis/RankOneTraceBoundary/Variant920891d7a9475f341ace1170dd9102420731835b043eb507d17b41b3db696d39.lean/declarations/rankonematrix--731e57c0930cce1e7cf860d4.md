# rankOneMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efcbedf22ee8b9933b0dc1bd35caf07271856c06bfc87a2ab1877f880ed4b82a",
  "kind": "def",
  "lexical_name": "rankOneMatrix",
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
  "slug": "rankonematrix--731e57c0930cce1e7cf860d4",
  "source": {
    "blob": "52fa03fc8c047d612ac86df43320a901aec15b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 88,
    "path": "GRWTSK/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:731e57c0930cce1e7cf860d4917f671798ae9bb104db8e56436923bc16f3f7e6",
  "verification": {
    "reference": "docs/verification/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efcbedf22ee8b9933b0dc1bd35caf07271856c06bfc87a2ab1877f880ed4b82a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rankOneMatrix (a b : Fin 22 → ℝ) : Operator := fun i j => a i * b j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52fa03fc8c047d612ac86df43320a901aec15b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
