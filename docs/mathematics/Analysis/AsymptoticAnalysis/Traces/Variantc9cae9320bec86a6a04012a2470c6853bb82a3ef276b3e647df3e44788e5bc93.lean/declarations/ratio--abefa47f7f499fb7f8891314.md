# ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe840650-b29b-e042-8ab9-2f87e0641b5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbce9f2b-bcc0-713f-741c-18d9ad5ff78a",
  "kind": "theorem",
  "lexical_name": "ratio",
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
  "slug": "ratio--abefa47f7f499fb7f8891314",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 477,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abefa47f7f499fb7f88913144a28641961dfdb82a3a7b056b4cad64f2f482852",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbce9f2b-bcc0-713f-741c-18d9ad5ff78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio : (fun T => D.trG T ^ 2 / D.trG2 T)
    ~[atTop] (fun T => ThmD.cRatio (P.lam1 T) (D.aT T) (D.bT T) (D.JT T) * D.Ncnt T) := by
  have h1 := tr1' h
  have h2 := tr2 h
  have hN := isEquivalent_Ncnt h
  -- trG²/trG2 ~ (aLN)²/M₂
  have hq : (fun T => D.trG T ^ 2 / D.trG2 T)
      ~[atTop] (fun T => (D.aT T * P.L T * D.Ncnt T) ^ 2 / mainTr2Xi P D.bT D.JT T) :=
    (h1.pow 2).div h2
  -- N/(Tℓ/2π) ~ 1
  have hone : (fun T => D.Ncnt T / (T * ell1 T / (2 * π))) ~[atTop] (fun _ => (1:ℝ)) := by
    refine (hN.div IsEquivalent.refl).congr_right ?_
    filter_upwards [nonzeros h] with T ⟨ _u0, _u1, _u2, _u3, _u4, h6⟩
    simp [div_self h6]
  have hmain : (fun T => ThmD.cRatio (P.lam1 T) (D.aT T) (D.bT T) (D.JT T) * D.Ncnt T
        * (D.Ncnt T / (T * ell1 T / (2 * π))))
      ~[atTop] (fun T => ThmD.cRatio (P.lam1 T) (D.aT T) (D.bT T) (D.JT T) * D.Ncnt T) := by
    exact ((IsEquivalent.refl
      (u := fun T => ThmD.cRatio (P.lam1 T) (D.aT T) (D.bT T) (D.JT T) * D.Ncnt T)
      (l := atTop)).mul hone).congr_left (Eventually.of_forall fun _ => rfl)
      |>.congr_right (Eventually.of_forall fun T => mul_one _)
  refine (hq.congr_right ?_).trans hmain
  filter_upwards [nonzeros h] with T ⟨hT, hL, hℓ, _u0, hden, _u1⟩
  simp only [mainTr2Xi, Params.lam1]
  exact ratio_identity T (P.L T) (ell1 T) (D.aT T) (D.bT T) (D.JT T) (D.Ncnt T) hT hL hℓ hden

/-- **hat-units second moment**: `tr G̃²/(aL)² ~ cRatio(λ₁; a, b, J_T)⁻¹ · N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
