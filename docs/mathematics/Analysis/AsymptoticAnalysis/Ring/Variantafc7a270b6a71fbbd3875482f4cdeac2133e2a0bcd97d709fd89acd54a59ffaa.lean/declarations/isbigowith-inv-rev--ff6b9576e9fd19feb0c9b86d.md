# IsBigOWith.inv_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "642352028661cbe6ef09463ed9a68521228ec234",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bab4eb0b-bc84-c3b3-7961-371df141589c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ef65f74-cc94-4ac0-969d-d498d1ef6fc2",
  "kind": "theorem",
  "lexical_name": "IsBigOWith.inv_rev",
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
  "slug": "isbigowith-inv-rev--ff6b9576e9fd19feb0c9b86d",
  "source": {
    "blob": "642352028661cbe6ef09463ed9a68521228ec234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 219,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff6b9576e9fd19feb0c9b86dc692ff0b656a727fd18fa619ce0a895c35bc39dd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ef65f74-cc94-4ac0-969d-d498d1ef6fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigOWith.inv_rev {f : α → 𝕜} {g : α → 𝕜'} (h : IsBigOWith c l f g)
    (h₀ : ∀ᶠ x in l, f x = 0 → g x = 0) : IsBigOWith c l (fun x => (g x)⁻¹) fun x => (f x)⁻¹ := by
  refine IsBigOWith.of_bound (h.bound.mp (h₀.mono fun x h₀ hle => ?_))
  rcases eq_or_ne (f x) 0 with hx | hx
  · simp only [hx, h₀ hx, inv_zero, norm_zero, mul_zero, le_rfl]
  · have hc : 0 < c := pos_of_mul_pos_left ((norm_pos_iff.2 hx).trans_le hle) (norm_nonneg _)
    replace hle := inv_anti₀ (norm_pos_iff.2 hx) hle
    simpa only [norm_inv, mul_inv, ← div_eq_inv_mul, div_le_iff₀ hc] using! hle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `642352028661cbe6ef09463ed9a68521228ec234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
