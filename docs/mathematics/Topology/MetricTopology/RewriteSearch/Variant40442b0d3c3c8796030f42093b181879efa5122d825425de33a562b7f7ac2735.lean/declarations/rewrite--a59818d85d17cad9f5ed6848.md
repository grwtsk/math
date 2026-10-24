# rewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09bbbfbb83be6f057b143338b1e0f470e5bd1d63d4bbee06b2783aa6420e7070",
  "kind": "def",
  "lexical_name": "rewrite",
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
  "slug": "rewrite--a59818d85d17cad9f5ed6848",
  "source": {
    "blob": "b255270400b0cb3c7614bff9b32f9bdbd622763b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 235,
    "path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a59818d85d17cad9f5ed68488ba0be977a45ce4e606d2daa2c96a7189be4f972",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09bbbfbb83be6f057b143338b1e0f470e5bd1d63d4bbee06b2783aa6420e7070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rewrite (n : SearchNode) (r : Rewrites.RewriteResult) (k : Nat) :
    MetaM (Option SearchNode) :=
  withMCtx r.mctx do
    let goal' ← n.goal.replaceTargetEq r.result.eNew r.result.eqProof
    n.push r.expr r.symm k goal' (← getMCtx)

/--
Given a pair of `DiscrTree` trees
indexing all rewrite lemmas in the imported files and the current file,
try rewriting the current goal in the `SearchNode` by one of them,
returning a `MLList MetaM SearchNode`, i.e. a lazy list of next possible goals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b255270400b0cb3c7614bff9b32f9bdbd622763b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
