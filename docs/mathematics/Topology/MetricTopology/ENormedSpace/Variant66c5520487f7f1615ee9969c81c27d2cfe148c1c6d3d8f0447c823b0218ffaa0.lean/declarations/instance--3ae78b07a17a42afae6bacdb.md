# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a0110985ee4349508503ea144540fa4052a08c30275e5d6b6bf5d1af1753be2",
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
  "slug": "instance--3ae78b07a17a42afae6bacdb",
  "source": {
    "blob": "9f31c51147c5d32ac6aba5c653c4f9568be61c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ae78b07a17a42afae6bacdb1e3807ae9a5806d8af3015a9e33650d797c91540",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a0110985ee4349508503ea144540fa4052a08c30275e5d6b6bf5d1af1753be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : SemilatticeSup (ENormedSpace 𝕜 V) :=
  { ENormedSpace.partialOrder with
    le := (· ≤ ·)
    lt := (· < ·)
    sup := fun e₁ e₂ =>
      { toFun := fun x => max (e₁ x) (e₂ x)
        eq_zero' := fun _ h => e₁.eq_zero_iff.1 (ENNReal.max_eq_zero_iff.1 h).1
        map_add_le' := fun _ _ =>
          max_le (le_trans (e₁.map_add_le _ _) <| add_le_add (le_max_left _ _) (le_max_left _ _))
            (le_trans (e₂.map_add_le _ _) <| add_le_add (le_max_right _ _) (le_max_right _ _))
        map_smul_le' := fun c x => le_of_eq <| by simp only [map_smul, mul_max] }
    le_sup_left := fun _ _ _ => le_max_left _ _
    le_sup_right := fun _ _ _ => le_max_right _ _
    sup_le := fun _ _ _ h₁ h₂ x => max_le (h₁ x) (h₂ x) }

@[deprecated "Use ENormedAddCommMonoid or talk to the Carleson project" (since := "2025-05-07"),
  simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f31c51147c5d32ac6aba5c653c4f9568be61c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
