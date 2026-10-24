# tendsto_card_div_pow₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a28fd83e295b0d2d972d0897ef9e97dae6fad500eb99a1a0a2cf2705be965764",
  "kind": "def",
  "lexical_name": "tendsto_card_div_pow₁",
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
  "slug": "tendsto-card-div-pow--8b315dbdead0427341eb3514",
  "source": {
    "blob": "35313037decf6ef9b9d7127d1e9ffc27c67d14f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 363,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b315dbdead0427341eb35143acc8634188bc85949a9e64af44ad84e14cdbe8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a28fd83e295b0d2d972d0897ef9e97dae6fad500eb99a1a0a2cf2705be965764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tendsto_card_div_pow₁ {c : ℝ} (hc : c ≠ 0) :
    ↑(s ∩ c⁻¹ • L) ≃ ↑(c • s ∩ L) :=
  Equiv.subtypeEquiv (Equiv.smulRight hc) (fun x ↦ by
    simp_rw [Set.mem_inter_iff, Equiv.smulRight_apply, Set.smul_mem_smul_set_iff₀ hc,
      ← Set.mem_inv_smul_set_iff₀ hc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35313037decf6ef9b9d7127d1e9ffc27c67d14f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
