# prodMk_eq_prodMk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4440f576-eb95-5894-143c-38e47471f4eb",
  "kind": "lemma",
  "lexical_name": "prodMk_eq_prodMk'",
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
  "slug": "prodmk-eq-prodmk--8c49a185299ecfec991b848f",
  "source": {
    "blob": "d7bd0a5c931c45421c41c83a595d3aa9c37095c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantffe6134405b92ac9c55d7db1a4b162610c43085368b1262c6370b518f590085b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c49a185299ecfec991b848f41b906697a6cd896932010c75816d5289b015ca2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantffe6134405b92ac9c55d7db1a4b162610c43085368b1262c6370b518f590085b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4440f576-eb95-5894-143c-38e47471f4eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodMk_eq_prodMk' : prodMk μ ν = prodMk' μ ν := by
  apply DFunLike.coe_injective
  apply denseRange_tensorHom.equalizer (by fun_prop) (by fun_prop) (funext fun h ↦ ?_)
  induction h with
  | add => grind
  | tmul f g => simp [prodMul_def, prodMk_prod_apply μ, prodMk'_prod_apply μ]

end Profinite

end Prod

end ContinuousSMul

end AbstractMeasure

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantffe6134405b92ac9c55d7db1a4b162610c43085368b1262c6370b518f590085b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantffe6134405b92ac9c55d7db1a4b162610c43085368b1262c6370b518f590085b.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7bd0a5c931c45421c41c83a595d3aa9c37095c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
