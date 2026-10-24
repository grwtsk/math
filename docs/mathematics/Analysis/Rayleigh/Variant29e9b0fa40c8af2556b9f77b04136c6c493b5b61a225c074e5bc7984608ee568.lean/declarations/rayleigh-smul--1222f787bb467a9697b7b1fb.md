# rayleigh_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74c28c82-d959-eaec-0047-d9dfc1df37a1",
  "kind": "theorem",
  "lexical_name": "rayleigh_smul",
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
  "slug": "rayleigh-smul--1222f787bb467a9697b7b1fb",
  "source": {
    "blob": "79f10aeac5a2f41092284d9c1886e426cdfd0677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1222f787bb467a9697b7b1fb9fc70656fb8ea8fb566024948bb31c7922085949",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74c28c82-d959-eaec-0047-d9dfc1df37a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rayleigh_smul (x : E) {c : 𝕜} (hc : c ≠ 0) :
    rayleighQuotient T (c • x) = rayleighQuotient T x := by
  by_cases hx : x = 0
  · simp [hx]
  have : ‖c‖ ≠ 0 := by simp [hc]
  have : ‖x‖ ≠ 0 := by simp [hx]
  field_simp [norm_smul, T.reApplyInnerSelf_smul]
  ring
#align continuous_linear_map.rayleigh_smul ContinuousLinearMap.rayleigh_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f10aeac5a2f41092284d9c1886e426cdfd0677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
