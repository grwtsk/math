# isDiameter_iff_right_mem_and_midpoint_eq_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ed937a2-2893-acf8-f474-bedc0d35ed68",
  "kind": "lemma",
  "lexical_name": "isDiameter_iff_right_mem_and_midpoint_eq_center",
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
  "slug": "isdiameter-iff-right-mem-and-midpoint-eq-center--a175025a30ec1e0e44be55fc",
  "source": {
    "blob": "ce18d7ccd2f432d9fca9b7b7b8e53460b8b9a8c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 253,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a175025a30ec1e0e44be55fc2c8814db92a06cbb63ea9ac268c5e27147a0ee0f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ed937a2-2893-acf8-f474-bedc0d35ed68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDiameter_iff_right_mem_and_midpoint_eq_center :
    s.IsDiameter p₁ p₂ ↔ p₂ ∈ s ∧ midpoint ℝ p₁ p₂ = s.center :=
  ⟨fun h ↦ ⟨h.right_mem, h.2⟩, fun h ↦ IsDiameter.symm ⟨h.1, midpoint_comm (R := ℝ) p₁ p₂ ▸ h.2⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce18d7ccd2f432d9fca9b7b7b8e53460b8b9a8c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
