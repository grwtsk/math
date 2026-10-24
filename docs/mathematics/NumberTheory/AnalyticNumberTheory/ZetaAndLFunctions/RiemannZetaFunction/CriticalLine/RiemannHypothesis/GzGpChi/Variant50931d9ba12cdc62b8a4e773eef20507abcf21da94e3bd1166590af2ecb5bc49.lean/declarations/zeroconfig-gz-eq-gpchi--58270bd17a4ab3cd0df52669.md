# ZeroConfig.Gz_eq_GpChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd49466d-1943-a614-e13f-b91c5df06233",
  "kind": "theorem",
  "lexical_name": "ZeroConfig.Gz_eq_GpChi",
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
  "slug": "zeroconfig-gz-eq-gpchi--58270bd17a4ab3cd0df52669",
  "source": {
    "blob": "bbaaf0ff65b32817576cb61fdc8c9dde8ba10b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58270bd17a4ab3cd0df5266903fc9e415ceef82747197768e6f84de433e57ee0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd49466d-1943-a614-e13f-b91c5df06233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZeroConfig.Gz_eq_GpChi (Z : ZeroConfig) (P : Params) (κ q : ℕ) (c : ℕ → ℂ) (T : ℝ)
    (hEF : ThmE.ExplicitFormulaPaperChi κ q c Z) (hL : 0 < P.L T)
    (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) :
    Z.Gz P T = ThmE.GpChi P κ q c T := by
  ext k l
  obtain ⟨-, -, hW⟩ := hEF (P.L T) hL (P.fk T k) (P.fk T l) (GzGp.fk_contDiff P T hφC2 k)
    (GzGp.fk_contDiff P T hφC2 l) (GzGp.fk_tsupport P T hφsupp k) (GzGp.fk_tsupport P T hφsupp l)
  rw [GzGp.Gz_eq_W, hW, GzGpChi.EFrhs_eq_GpChi]

/-- Under H-EF(χ) the zero-side entries are absolutely summable (for the χ-tail file). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbaaf0ff65b32817576cb61fdc8c9dde8ba10b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
