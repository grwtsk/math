# norm_le_tsum_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53500c78-ff18-d8fe-0c2d-59fb418810c0",
  "kind": "lemma",
  "lexical_name": "norm_le_tsum_norm",
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
  "slug": "norm-le-tsum-norm--6c65c7004ca92a5c92ee3d5b",
  "source": {
    "blob": "e04d6cb63a84a2e09e7697f7d4755d70ca0c91ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant46bd7589b2552f12a6c89fb5619ec25b5536ef1afe4c6325925222e06544bad4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c65c7004ca92a5c92ee3d5baa14cb10d08cf6909e6097fba5d1f6029865cec7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant46bd7589b2552f12a6c89fb5619ec25b5536ef1afe4c6325925222e06544bad4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53500c78-ff18-d8fe-0c2d-59fb418810c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_tsum_norm (N : ℕ) (a : Fin 2 → ZMod N) (k : ℤ) (hk : 3 ≤ k) (z : ℍ) :
    ‖eisensteinSeries a k z‖ ≤ ∑' (x : Fin 2 → ℤ), ‖eisSummand k x z‖ := by
  simp_rw [eisensteinSeries]
  apply le_trans (norm_tsum_le_tsum_norm ((summable_norm_eisSummand hk z).subtype _))
    (Summable.tsum_subtype_le (fun (x : Fin 2 → ℤ) ↦ ‖(eisSummand k x z)‖) _ (fun _ ↦ norm_nonneg _)
      (summable_norm_eisSummand hk z))

/-- Eisenstein series are bounded at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant46bd7589b2552f12a6c89fb5619ec25b5536ef1afe4c6325925222e06544bad4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant46bd7589b2552f12a6c89fb5619ec25b5536ef1afe4c6325925222e06544bad4.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e04d6cb63a84a2e09e7697f7d4755d70ca0c91ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
