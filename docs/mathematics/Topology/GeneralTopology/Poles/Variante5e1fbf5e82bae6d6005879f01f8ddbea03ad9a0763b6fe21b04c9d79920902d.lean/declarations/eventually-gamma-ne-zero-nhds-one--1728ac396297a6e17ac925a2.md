# eventually_Gammaℝ_ne_zero_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91e8f612-f7ae-b26e-2f80-8a25013851e5",
  "kind": "lemma",
  "lexical_name": "eventually_Gammaℝ_ne_zero_nhds_one",
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
  "slug": "eventually-gamma-ne-zero-nhds-one--1728ac396297a6e17ac925a2",
  "source": {
    "blob": "925679930916da474288c858474ee4c850cb760a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1728ac396297a6e17ac925a21b5fd78485075fd420e243a16e27ecaebeb50429",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e8f612-f7ae-b26e-2f80-8a25013851e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_Gammaℝ_ne_zero_nhds_one : ∀ᶠ s in 𝓝 (1:ℂ), Gammaℝ s ≠ 0 := by
  have h1 : ∀ᶠ s in 𝓝 (1:ℂ), -2 < s.re :=
    (continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by
      simp only [Set.mem_preimage, Complex.one_re, Set.mem_Ioi]; norm_num)
  have h2 : ∀ᶠ s in 𝓝 (1:ℂ), s ≠ 0 := isOpen_ne.mem_nhds one_ne_zero
  filter_upwards [h1, h2] with s hs hs0
  exact Gammaℝ_ne_zero_of_re hs hs0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925679930916da474288c858474ee4c850cb760a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
