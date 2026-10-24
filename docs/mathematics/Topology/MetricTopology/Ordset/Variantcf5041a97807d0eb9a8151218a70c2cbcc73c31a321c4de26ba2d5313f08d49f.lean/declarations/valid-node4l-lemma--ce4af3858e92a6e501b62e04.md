# Valid'.node4L_lemma₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e70fdbe-0f3a-f5ea-ff35-60b7db820a9e",
  "kind": "theorem",
  "lexical_name": "Valid'.node4L_lemma₂",
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
  "slug": "valid-node4l-lemma--ce4af3858e92a6e501b62e04",
  "source": {
    "blob": "fc90ebacb32e61d20fa013c36c1e1983e322c25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 162,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce4af3858e92a6e501b62e04277d2bc2646abed760c891ce3774b75fa84d0a59",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e70fdbe-0f3a-f5ea-ff35-60b7db820a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid'.node4L_lemma₂ {b c d : ℕ} (mr₂ : b + c + 1 ≤ 3 * d) : c ≤ 3 * d := by omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc90ebacb32e61d20fa013c36c1e1983e322c25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
