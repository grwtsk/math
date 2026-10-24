# dist_le_tsum_dist_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d81c03a-e70f-efa0-bdf8-1502ada9f7b4",
  "kind": "theorem",
  "lexical_name": "dist_le_tsum_dist_of_tendsto",
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
  "slug": "dist-le-tsum-dist-of-tendsto--5a66d9167d9432ba90c86e67",
  "source": {
    "blob": "ebbc93419abf5b8686402f07dd751a8d642aec1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a66d9167d9432ba90c86e67a512137f1a183603c6596dc8b07b22f8964f434a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d81c03a-e70f-efa0-bdf8-1502ada9f7b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_tsum_dist_of_tendsto (h : Summable fun n ↦ dist (f n) (f n.succ))
    (ha : Tendsto f atTop (𝓝 a)) (n) : dist (f n) a ≤ ∑' m, dist (f (n + m)) (f (n + m).succ) :=
  show dist (f n) a ≤ ∑' m, (fun x ↦ dist (f x) (f x.succ)) (n + m) from
    dist_le_tsum_of_dist_le_of_tendsto (fun n ↦ dist (f n) (f n.succ)) (fun _ ↦ le_rfl) h ha n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebbc93419abf5b8686402f07dd751a8d642aec1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
