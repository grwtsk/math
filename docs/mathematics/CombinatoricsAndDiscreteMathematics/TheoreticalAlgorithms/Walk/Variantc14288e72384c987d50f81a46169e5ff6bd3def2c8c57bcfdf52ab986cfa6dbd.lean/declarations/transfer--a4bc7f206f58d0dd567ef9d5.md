# transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:173168da328877c4dadb6dd82bdfee03894066400ef9833d344b85669b507b79",
  "kind": "def",
  "lexical_name": "transfer",
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
  "slug": "transfer--a4bc7f206f58d0dd567ef9d5",
  "source": {
    "blob": "1184e3417988e440e2651d0618fe7d4c23bd65c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1203,
    "line": 1195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantc14288e72384c987d50f81a46169e5ff6bd3def2c8c57bcfdf52ab986cfa6dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4bc7f206f58d0dd567ef9d53e96fa857317e65a863f1a08b35121de67a9efd4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantc14288e72384c987d50f81a46169e5ff6bd3def2c8c57bcfdf52ab986cfa6dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:173168da328877c4dadb6dd82bdfee03894066400ef9833d344b85669b507b79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1195–1203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def transfer {u v : V} (p : G.Walk u v)
    (H : SimpleGraph V) (h : ∀ e, e ∈ p.edges → e ∈ H.edgeSet) : H.Walk u v :=
  match p with
  | nil => nil
  | cons' u v w _ p =>
    cons (h s(u, v) (by simp)) (p.transfer H fun e he => h e (by simp [he]))

variable {u v : V} (p : G.Walk u v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantc14288e72384c987d50f81a46169e5ff6bd3def2c8c57bcfdf52ab986cfa6dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantc14288e72384c987d50f81a46169e5ff6bd3def2c8c57bcfdf52ab986cfa6dbd.lean#L1195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1184e3417988e440e2651d0618fe7d4c23bd65c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
