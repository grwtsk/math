# tendsto_cRatio_concreteChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f00ada1-40d4-aa01-8e1b-f57541319645",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_concreteChi",
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
  "slug": "tendsto-cratio-concretechi--ce2d17ba1f53fc844f994758",
  "source": {
    "blob": "d037bd6e4dd786dede36614fea48f3c5788001f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce2d17ba1f53fc844f9947588b1da21d5f274796c5a2b70b22b056dc0ff58629",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f00ada1-40d4-aa01-8e1b-f57541319645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_concreteChi {P : Params} (hP : P.Valid) {q : ℕ} (hq : 1 ≤ q)
    (aT bT JT : ℝ → ℝ)
    (ha : Tendsto aT atTop (𝓝 (ThmD.aStar P.lam)))
    (hb : Tendsto bT atTop (𝓝 (ThmD.bStar P.lam)))
    (hJ : Tendsto JT atTop (𝓝 (ThmD.jStar P.lam))) :
    Tendsto (fun T => ThmD.cRatio (ThmE.lam1q P q T) (aT T) (bT T) (JT T)) atTop
      (𝓝 (ThmD.cStar P.lam)) :=
  ThmD.tendsto_cRatio_of hP.lam_pos hP.lam_le_one (tendsto_lam1q hP hq) ha hb hJ

end ThmDE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d037bd6e4dd786dede36614fea48f3c5788001f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
