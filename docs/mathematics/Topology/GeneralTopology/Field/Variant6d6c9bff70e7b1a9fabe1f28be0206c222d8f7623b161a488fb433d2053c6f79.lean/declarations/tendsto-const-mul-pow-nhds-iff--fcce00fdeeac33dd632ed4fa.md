# tendsto_const_mul_pow_nhds_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41b242d1-b116-76f5-673a-a48f807b2c65",
  "kind": "theorem",
  "lexical_name": "tendsto_const_mul_pow_nhds_iff'",
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
  "slug": "tendsto-const-mul-pow-nhds-iff--fcce00fdeeac33dd632ed4fa",
  "source": {
    "blob": "f1429aec19e1335c715c65b508ab68b18e763232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcce00fdeeac33dd632ed4fade086962aa5517544626637f7b51b909d8197743",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41b242d1-b116-76f5-673a-a48f807b2c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_mul_pow_nhds_iff' {n : ℕ} {c d : 𝕜} :
    Tendsto (fun x : 𝕜 => c * x ^ n) atTop (𝓝 d) ↔ (c = 0 ∨ n = 0) ∧ c = d := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp [tendsto_const_nhds_iff]
  rcases lt_trichotomy c 0 with (hc | rfl | hc)
  · have := tendsto_const_mul_pow_atBot_iff.2 ⟨hn, hc⟩
    simp [not_tendsto_nhds_of_tendsto_atBot this, hc.ne, hn]
  · simp [tendsto_const_nhds_iff]
  · have := tendsto_const_mul_pow_atTop_iff.2 ⟨hn, hc⟩
    simp [not_tendsto_nhds_of_tendsto_atTop this, hc.ne', hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1429aec19e1335c715c65b508ab68b18e763232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
