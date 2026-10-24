# sin_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ea293e-82da-9f68-01a3-126446ce90fb",
  "kind": "theorem",
  "lexical_name": "sin_eq_zero_iff",
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
  "slug": "sin-eq-zero-iff--5d4c7f1e7d52e317fa63bf67",
  "source": {
    "blob": "6a7a116435cdeee70bdb4bb8afde1bbcd684ce67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d4c7f1e7d52e317fa63bf673e7b968595084c05e45f36774a26c6dec6b6960a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ea293e-82da-9f68-01a3-126446ce90fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_eq_zero_iff {θ : ℂ} : sin θ = 0 ↔ ∃ k : ℤ, θ = k * π := by
  rw [← Complex.cos_sub_pi_div_two, cos_eq_zero_iff]
  constructor
  · rintro ⟨k, hk⟩
    use k + 1
    field_simp [eq_add_of_sub_eq hk]
    ring
  · rintro ⟨k, rfl⟩
    use k - 1
    field_simp
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a7a116435cdeee70bdb4bb8afde1bbcd684ce67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
