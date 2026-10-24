# norm_spectrum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d863326d-4562-7d8f-9327-80588ce4a219",
  "kind": "lemma",
  "lexical_name": "norm_spectrum_le",
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
  "slug": "norm-spectrum-le--a5cf6b8967e957bcd095ecc9",
  "source": {
    "blob": "c35f564d08a1a5b5c451abb6269f27c4175ae33e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 165,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantc288709583712c4902d8919ff095e48193db3a48b9bf967900981c1dc3361308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5cf6b8967e957bcd095ecc9a75d9294969423cae1e9bc1511f72f0b790617a0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantc288709583712c4902d8919ff095e48193db3a48b9bf967900981c1dc3361308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d863326d-4562-7d8f-9327-80588ce4a219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_spectrum_le (a : A) ⦃x : 𝕜⦄ (hx : x ∈ σ 𝕜 a) (ha : p a := by cfc_tac) :
    ‖x‖ ≤ ‖a‖ := by
  simpa only [cfc_id 𝕜 a] using! norm_apply_le_norm_cfc (id : 𝕜 → 𝕜) a hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantc288709583712c4902d8919ff095e48193db3a48b9bf967900981c1dc3361308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantc288709583712c4902d8919ff095e48193db3a48b9bf967900981c1dc3361308.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35f564d08a1a5b5c451abb6269f27c4175ae33e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
