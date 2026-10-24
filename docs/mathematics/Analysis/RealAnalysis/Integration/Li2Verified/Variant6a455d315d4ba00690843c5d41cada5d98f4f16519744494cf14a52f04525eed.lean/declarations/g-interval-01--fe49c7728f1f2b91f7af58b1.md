# g_interval_01

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78399e89a80b158f3473c87ae5bee046f4ea9491b1497ba2d2a00460ef6888c6",
  "kind": "def",
  "lexical_name": "g_interval_01",
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
  "slug": "g-interval-01--fe49c7728f1f2b91f7af58b1",
  "source": {
    "blob": "db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 771,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe49c7728f1f2b91f7af58b1b070d15b5f00395f127890451ab11c9e3782a8cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78399e89a80b158f3473c87ae5bee046f4ea9491b1497ba2d2a00460ef6888c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def g_interval_01 : IntervalRat := ⟨1/100000, 1/10000, by norm_num⟩

/-- The g_alt_expr integral equals g integral on [1/100000, 1/10000]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
