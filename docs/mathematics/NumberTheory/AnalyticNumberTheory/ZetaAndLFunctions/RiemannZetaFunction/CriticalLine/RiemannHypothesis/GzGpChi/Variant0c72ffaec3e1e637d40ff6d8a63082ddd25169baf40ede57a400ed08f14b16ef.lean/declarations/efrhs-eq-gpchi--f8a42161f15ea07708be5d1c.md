# EFrhs_eq_GpChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a9e4eee8176d095c9c019ce1873c280358ce2c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51aa5dd4-f507-e586-016d-dc89643674b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46539397-db25-c9d4-3837-4bc037f11c0d",
  "kind": "lemma",
  "lexical_name": "EFrhs_eq_GpChi",
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
  "slug": "efrhs-eq-gpchi--f8a42161f15ea07708be5d1c",
  "source": {
    "blob": "7a9e4eee8176d095c9c019ce1873c280358ce2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a42161f15ea07708be5d1cccc015f2ded056818bd569bf25fdf8c542a624ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46539397-db25-c9d4-3837-4bc037f11c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EFrhs_eq_GpChi (k l : Fin (P.d T)) :
    (∫ τ : ℝ, paperFT (P.fk T k) τ * conj (paperFT (P.fk T l) τ) *
      (ThmE.nuXc κ q c (Real.exp (P.L T)) τ : ℂ)) = ThmE.GpChi P κ q c T k l := by
  unfold ThmE.GpChi ThmE.GentryChi Params.X
  rw [← integral_complex_ofReal]
  congr 1
  ext τ
  rw [GzGp.paperFT_fk, GzGp.paperFT_fk, ← Complex.ofReal_sub, ← Complex.ofReal_sub,
    GzGp.phiHat_ofReal, GzGp.phiHat_ofReal, Complex.conj_ofReal]
  push_cast
  ring

end GzGpChi

/-- **The H-EF(χ) bridge**: zero-side and prime-side matrices for L(s,χ) agree, given H-EF(χ), L > 0,
φ ∈ C² and supp φ ⊆ [−L/2, L/2]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9e4eee8176d095c9c019ce1873c280358ce2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
