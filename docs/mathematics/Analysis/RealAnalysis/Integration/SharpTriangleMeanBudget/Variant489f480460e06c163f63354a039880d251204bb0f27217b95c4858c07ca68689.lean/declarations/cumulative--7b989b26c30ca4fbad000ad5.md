# cumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1858467012939f59e589415ff4d2a4db6603940919739e15386de5d9d79ab9fb",
  "kind": "def",
  "lexical_name": "cumulative",
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
  "slug": "cumulative--7b989b26c30ca4fbad000ad5",
  "source": {
    "blob": "b8c6c1d45e39f199d0a5dbc0ef981ad731e0676f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant489f480460e06c163f63354a039880d251204bb0f27217b95c4858c07ca68689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b989b26c30ca4fbad000ad5f19fec78355272a6a2925c24480f3bb602752707",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant489f480460e06c163f63354a039880d251204bb0f27217b95c4858c07ca68689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1858467012939f59e589415ff4d2a4db6603940919739e15386de5d9d79ab9fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cumulative (f : ℝ → ℝ) (T : ℝ) : ℝ := ∫ t in 0..T, f t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant489f480460e06c163f63354a039880d251204bb0f27217b95c4858c07ca68689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant489f480460e06c163f63354a039880d251204bb0f27217b95c4858c07ca68689.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c6c1d45e39f199d0a5dbc0ef981ad731e0676f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
