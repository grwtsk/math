# η

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66f4a7f043bea56998c08feeeeb3d44c55a3a82e4e4c01a87da8d1b9468c8427",
  "kind": "def",
  "lexical_name": "η",
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
  "slug": "anonymous--dbde82062ff0786e044abc09",
  "source": {
    "blob": "6ef8fef67454e6e62565900c8f74ecfc04d2a72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbde82062ff0786e044abc0966e81480f1202e2121718102dcd8adec2cbea3e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66f4a7f043bea56998c08feeeeb3d44c55a3a82e4e4c01a87da8d1b9468c8427`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def η : C∞_c ℝ≥0 ℝ :=
  -- Restrict the one–dimensional `ContDiffBump (0) (1)`
  (ContDiffBump.ofNat 0 1).toC∞_c.restrict
    (by
      intro x hx
      -- support is contained in the closed ball of radius 1
      have : (x : ℝ) ≤ 1 := by
        have hx' : dist (x : ℝ) 0 ≤ (1 : ℝ) :=
          by
            simpa [Real.norm_eq_abs, abs_ofNonneg x.property] using hx
        simpa using hx'
      exact this)
    (by
      -- zero outside the open ball radius 1, hence compact support
      have : (ContDiffBump.ofNat 0 1).support ⊆ Metric.closedBall 0 1 :=
        (ContDiffBump.support_subset _)
      simpa using this)

/-- By construction `η 0 = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ef8fef67454e6e62565900c8f74ecfc04d2a72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
