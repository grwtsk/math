# newton_seq_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdfb67fe4e364de4b07c614c0c50a95a2410a4697840bdb44bb1ae2e8351e09e",
  "kind": "def",
  "lexical_name": "newton_seq_gen",
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
  "slug": "newton-seq-gen--9f6cbca51b08424eee1442ac",
  "source": {
    "blob": "84e2d86ca0e264876788b1dd9c5f612070343e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 253,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f6cbca51b08424eee1442ac0d698fbfd1fd3ecaaec218969e7f2f72ac87bcbf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdfb67fe4e364de4b07c614c0c50a95a2410a4697840bdb44bb1ae2e8351e09e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def newton_seq_gen (n : ℕ) : ℤ_[p] :=
  (newton_seq_aux hnorm n).1

local notation "newton_seq" => newton_seq_gen hnorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e2d86ca0e264876788b1dd9c5f612070343e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
