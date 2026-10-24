# gInt_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77e45a05-cbd8-1be0-1c75-fc4e53742a8c",
  "kind": "theorem",
  "lexical_name": "gInt_hasCompactSupport",
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
  "slug": "gint-hascompactsupport--4cc37281ae0e05729e88b659",
  "source": {
    "blob": "7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 126,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc37281ae0e05729e88b659eee620335652bf8d689db1b2e0af948c01ef4387",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e45a05-cbd8-1be0-1c75-fc4e53742a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gInt_hasCompactSupport (hL : 0 < L) (hsupp : ∀ u, L / 2 ≤ |u| → φ u = 0) :
    HasCompactSupport (Function.uncurry (gInt φ L T τ τ')) := by
  refine HasCompactSupport.of_support_subset_isCompact
    ((isCompact_Icc (a := (-1 : ℝ)) (b := 1)).prod (isCompact_Icc (a := -(L / 2)) (b := L / 2))) ?_
  rintro ⟨ξ, u⟩ hne
  rw [Function.mem_support, Function.uncurry_apply_pair] at hne
  by_contra hmem
  apply hne (gInt_eq_zero_of_not_mem hL hsupp _)
  rintro ⟨h1, h2⟩
  apply hmem
  rw [mem_prod, mem_Icc, mem_Icc]
  exact ⟨⟨by linarith [neg_abs_le ξ], by linarith [le_abs_self ξ]⟩,
    ⟨by linarith [neg_abs_le u], by linarith [le_abs_self u]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
