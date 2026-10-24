# actual_source_spectral_jump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62500252-cd15-220d-c0b2-11a0b4cee1c7",
  "kind": "theorem",
  "lexical_name": "actual_source_spectral_jump",
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
  "slug": "actual-source-spectral-jump--ede1848248e8bf02c5614ef8",
  "source": {
    "blob": "a4a1d3db8fc9d07557fc5503cd81b89e58f21297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantab4e54d7ad1a03cf02158de563b761dae3e5d44000306fc96b368b67e0d0685b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede1848248e8bf02c5614ef8ae1915c6fc041bf19615f4830f53fe488ad24118",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceDualFourierJump/Variantab4e54d7ad1a03cf02158de563b761dae3e5d44000306fc96b368b67e0d0685b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62500252-cd15-220d-c0b2-11a0b4cee1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_spectral_jump (A : ℝ) (hA : 1 ≤ A) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] signModulated (standardSourceTransform A) :=
  no_continuous_ae_signModulated (standardSourceTransform_continuous A hA)
    (standardSourceTransform_zero_ne A hA)

/-- The angular-positive symbol has opposite standard-frequency orientation,
with the same source-specific jump obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceDualFourierJump/Variantab4e54d7ad1a03cf02158de563b761dae3e5d44000306fc96b368b67e0d0685b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantab4e54d7ad1a03cf02158de563b761dae3e5d44000306fc96b368b67e0d0685b.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4a1d3db8fc9d07557fc5503cd81b89e58f21297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
