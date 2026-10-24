# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:209f89106326a19301ca34308de6d04d7125622156d4a79a2c40fb0e6a8a518f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fcd4db6075b0f7e06ac04b36",
  "source": {
    "blob": "151c98eb10c7a515249cc0b6602c85e36aa8da4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcd4db6075b0f7e06ac04b363e52e0a387da3799c42bf6d68d93d9aaac7e7c16",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:209f89106326a19301ca34308de6d04d7125622156d4a79a2c40fb0e6a8a518f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Top (ENorm 𝕜 V) :=
  ⟨{  toFun := fun x => if x = 0 then 0 else ⊤
      eq_zero' := fun x => by simp only; split_ifs <;> simp [*]
      map_add_le' := fun x y => by
        simp only
        split_ifs with hxy hx hy hy hx hy hy <;> try simp [*]
        simp [hx, hy] at hxy
      map_smul_le' := fun c x => by
        simp only
        split_ifs with hcx hx hx <;> simp only [smul_eq_zero, not_or] at hcx
        · simp only [mul_zero, le_refl]
        · have : c = 0 := by tauto
          simp [this]
        · tauto
        · simpa [mul_top'] using hcx.1 }⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `151c98eb10c7a515249cc0b6602c85e36aa8da4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
