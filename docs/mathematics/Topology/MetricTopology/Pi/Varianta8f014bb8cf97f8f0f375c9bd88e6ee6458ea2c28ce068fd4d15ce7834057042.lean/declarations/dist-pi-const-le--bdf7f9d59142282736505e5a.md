# dist_pi_const_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eff24226-b0ed-2833-361a-89d18f8be1ae",
  "kind": "lemma",
  "lexical_name": "dist_pi_const_le",
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
  "slug": "dist-pi-const-le--bdf7f9d59142282736505e5a",
  "source": {
    "blob": "cd554be3994ba3add1a390f4eb5615c8977c7857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 95,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdf7f9d59142282736505e5aafc18989bd4168780b83f702993d54a23d5a9f9e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff24226-b0ed-2833-361a-89d18f8be1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_pi_const_le (a b : α) : (dist (fun _ : β => a) fun _ => b) ≤ dist a b :=
  (dist_pi_le_iff dist_nonneg).2 fun _ => le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Varianta8f014bb8cf97f8f0f375c9bd88e6ee6458ea2c28ce068fd4d15ce7834057042.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd554be3994ba3add1a390f4eb5615c8977c7857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
