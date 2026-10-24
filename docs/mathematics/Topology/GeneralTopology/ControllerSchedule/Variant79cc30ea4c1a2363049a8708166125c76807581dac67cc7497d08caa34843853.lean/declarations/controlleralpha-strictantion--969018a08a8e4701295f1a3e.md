# controllerAlpha_strictAntiOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be6eec5e-3cd9-6033-41ca-22cb19180141",
  "kind": "theorem",
  "lexical_name": "controllerAlpha_strictAntiOn",
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
  "slug": "controlleralpha-strictantion--969018a08a8e4701295f1a3e",
  "source": {
    "blob": "a61d26c3fd7c9a2c2fa8f2f186e645ae5383f00e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:969018a08a8e4701295f1a3e15b6e253a31bc2555471289814f92ade90a84f78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be6eec5e-3cd9-6033-41ca-22cb19180141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controllerAlpha_strictAntiOn (q : ℕ → H) :
    StrictAntiOn (controllerAlpha q) (Set.Ici 1) := by
  intro i hi j _hj hij
  have hir : 0 < (i : ℝ) := by
    exact_mod_cast (show 0 < i by change 1 ≤ i at hi; omega)
  have hijr : (i : ℝ) < j := by exact_mod_cast hij
  have hci := cumulativeCost_nonneg q i
  have hcj := cumulativeCost_nonneg q j
  have hmono := cumulativeCost_monotone q hij.le
  unfold controllerAlpha
  apply one_div_lt_one_div_of_lt (by positivity)
  nlinarith

/-- The positive-index parameters are bounded by the elementary reciprocal sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61d26c3fd7c9a2c2fa8f2f186e645ae5383f00e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
