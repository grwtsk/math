# inner_toL2_toL2_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cbc19ab-4ea1-f7ca-a2e2-af0eead6036f",
  "kind": "theorem",
  "lexical_name": "inner_toL2_toL2_eq",
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
  "slug": "inner-tol2-tol2-eq--48e7e04dc684d6b658c15dda",
  "source": {
    "blob": "6358790f10f8e7d38ca7415dfb54bbeb81a18baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1428,
    "line": 1418,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e7e04dc684d6b658c15dda7eb8bf059a4894a56251ef10716703eec23edeb9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cbc19ab-4ea1-f7ca-a2e2-af0eead6036f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1418–1428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_toL2_toL2_eq (f g : 𝓢(H, V)) (μ : Measure H := by volume_tac) [μ.HasTemperateGrowth] :
    inner ℂ (f.toLp 2 μ) (g.toLp 2 μ) = ∫ x, inner ℂ (f x) (g x) ∂μ := by
  apply integral_congr_ae
  have hf_ae := f.coeFn_toLp 2 μ
  have hg_ae := g.coeFn_toLp 2 μ
  filter_upwards [hf_ae, hg_ae] with _ hf hg
  rw [hf, hg]

end L2

end SchwartzMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean#L1418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6358790f10f8e7d38ca7415dfb54bbeb81a18baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
