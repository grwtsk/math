# tendsto_cRatio_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:839601bc-ac86-6109-d606-3e20d741bd06",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_of",
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
  "slug": "tendsto-cratio-of--076ed1d016acd055013eea08",
  "source": {
    "blob": "cda6e857c4519f68e3b0b8316424556232e98b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076ed1d016acd055013eea081792f82a475be9f4375c5d5f100050673c4973a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839601bc-ac86-6109-d606-3e20d741bd06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_of {lam : ℝ} (h0 : 0 < lam) (h1 : lam ≤ 1)
    {lam1f aT bT JT : ℝ → ℝ}
    (hl1 : Tendsto lam1f atTop (𝓝 lam))
    (ha : Tendsto aT atTop (𝓝 (aStar lam))) (hb : Tendsto bT atTop (𝓝 (bStar lam)))
    (hJ : Tendsto JT atTop (𝓝 (jStar lam))) :
    Tendsto (fun T => cRatio (lam1f T) (aT T) (bT T) (JT T)) atTop (𝓝 (cStar lam)) := by
  have hden := star_denom_pos h0 h1
  have hnum : Tendsto (fun T => lam1f T * (aT T) ^ 2) atTop (𝓝 (lam * (aStar lam) ^ 2)) :=
    hl1.mul (ha.pow 2)
  have hdenT : Tendsto (fun T => bT T + (lam1f T) ^ 2 * JT T) atTop
      (𝓝 (bStar lam + lam ^ 2 * jStar lam)) :=
    hb.add ((hl1.pow 2).mul hJ)
  have hlim := hnum.div hdenT (ne_of_gt hden)
  have hfinal : lam * (aStar lam) ^ 2 / (bStar lam + lam ^ 2 * jStar lam)
      = cStar lam := cRatio_star h0 h1
  rw [← hfinal]
  exact hlim

/-- **(L2)**: the concrete Montgomery–Taylor window ratio converges to c*_λ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda6e857c4519f68e3b0b8316424556232e98b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
