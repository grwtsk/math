# finite_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab4d70bd-a83d-1b3f-a64b-63b91af1880e",
  "kind": "theorem",
  "lexical_name": "finite_bounds",
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
  "slug": "finite-bounds--f65fee9c4f5c5bcd47947832",
  "source": {
    "blob": "f8ecfd80cdaf11e906c1120bc83c74cb37d0601c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65fee9c4f5c5bcd479478321cc1695fa4aeb3231031230cb9d9369afb949a0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab4d70bd-a83d-1b3f-a64b-63b91af1880e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_bounds {S r G verifiedHead strictTail : ℝ → ℝ} {a0 : ℝ}
    (h : FinitePremises S r G verifiedHead strictTail a0) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1 / 500000 : ℝ) ≤ S A ∧
        r A ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 → r A < 0) := by
  have hfinite : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1 / 500000 : ℝ) ≤ S A ∧
        r A ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ) := by
    intro A hA hA160
    have hS := spectral_lower_of_head_tail
      (h.decomposition A hA hA160) (h.verifiedHeadNonnegative A hA hA160)
      (h.strictTailAbsoluteBound A hA hA160)
    exact ⟨hS, residual_upper_of_spectral_lower hS
      (h.sourceFormula A hA hA160) (h.fullGammaUpper A hA hA160)⟩
  refine ⟨hfinite, ?_⟩
  intro A hA hA160
  have hA1 : 1 ≤ A := by linarith
  exact residual_negative_of_upper hA h.gammaConstantLtNegFour
    (hfinite A hA1 hA160).2

end CommonMean20261004.FiniteCertificate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ecfd80cdaf11e906c1120bc83c74cb37d0601c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
