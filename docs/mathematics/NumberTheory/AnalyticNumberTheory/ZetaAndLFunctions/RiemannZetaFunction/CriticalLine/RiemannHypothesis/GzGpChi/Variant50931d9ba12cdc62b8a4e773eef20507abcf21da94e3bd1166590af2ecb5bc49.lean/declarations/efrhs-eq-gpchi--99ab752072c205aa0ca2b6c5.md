# EFrhs_eq_GpChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49fdde37-9f39-ad53-da20-500236e40601",
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
  "slug": "efrhs-eq-gpchi--99ab752072c205aa0ca2b6c5",
  "source": {
    "blob": "bbaaf0ff65b32817576cb61fdc8c9dde8ba10b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ab752072c205aa0ca2b6c517a38421f00db34833bc34cab98edecf8c4d88f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49fdde37-9f39-ad53-da20-500236e40601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbaaf0ff65b32817576cb61fdc8c9dde8ba10b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
