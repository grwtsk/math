# paired_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3cbd695-5591-1b1d-5372-29763d4c63a1",
  "kind": "theorem",
  "lexical_name": "paired_lipschitz",
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
  "slug": "paired-lipschitz--cad803b0e8d2479a7c7bc71f",
  "source": {
    "blob": "17789f14474833e7df21efebf0ed3377f7029189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cad803b0e8d2479a7c7bc71f83ef20bba3ff7fd90f0fc326b08348e6e9fc670f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3cbd695-5591-1b1d-5372-29763d4c63a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_lipschitz {A s t : ℝ} (hA : 1 ≤ A)
    (hs : s ∈ Icc 0 (2*A)) (ht : t ∈ Icc 0 (2*A)) :
    |pairedTailTest A t-pairedTailTest A s| ≤
      (Real.exp A * ((1/2 : ℝ)+5/A)) * |t-s| := by
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun u (_ : u ∈ Icc 0 (2*A)) => (pairedTailTest_contDiff hA).differentiable
      (by norm_num) u)
    (fun u hu => by simpa only [Real.norm_eq_abs] using pairedDeriv_abs_le hA hu)
    (convex_Icc (0 : ℝ) (2*A)) hs ht
  simpa only [Real.norm_eq_abs] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17789f14474833e7df21efebf0ed3377f7029189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
