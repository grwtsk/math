# Valid'.rotateL_lemma₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8c5ff6e-84db-967d-256b-e73e1b5050ba",
  "kind": "theorem",
  "lexical_name": "Valid'.rotateL_lemma₁",
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
  "slug": "valid-rotatel-lemma--fd83d15e011fb50496713a64",
  "source": {
    "blob": "fc90ebacb32e61d20fa013c36c1e1983e322c25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 230,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd83d15e011fb50496713a64da7fd63f949a0742a0d1ba46a1eb3ea71830fae7",
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

Occurrence: `result:d8c5ff6e-84db-967d-256b-e73e1b5050ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid'.rotateL_lemma₁ {a b c : ℕ} (H2 : 3 * a ≤ b + c) (hb₂ : c ≤ 3 * b) : a ≤ 3 * b := by
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantcf5041a97807d0eb9a8151218a70c2cbcc73c31a321c4de26ba2d5313f08d49f.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc90ebacb32e61d20fa013c36c1e1983e322c25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
