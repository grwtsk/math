# integral_psi_div_eq_corrected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce058b75-965d-3401-54a0-c9357069cef6",
  "kind": "theorem",
  "lexical_name": "integral_psi_div_eq_corrected",
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
  "slug": "integral-psi-div-eq-corrected--ea617b6240706e262a56e4f3",
  "source": {
    "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 525,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea617b6240706e262a56e4f3b9b2327083930fdc5189c642308409a58c2455b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce058b75-965d-3401-54a0-c9357069cef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_psi_div_eq_corrected (N : Nat) (hN : 1 <= N) :
    (∫ t in (1 : Real)..N, Chebyshev.psi t / t) =
      (N : Real) - 1 +
        ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  have hR := intervalIntegrable_chebyshevRemainder_div hN
  have hone : IntervalIntegrable (fun _t : Real => (1 : Real)) volume 1 N :=
    intervalIntegrable_const
  calc
    (∫ t in (1 : Real)..N, Chebyshev.psi t / t) =
        ∫ t in (1 : Real)..N, (1 + chebyshevRemainder t / t) := by
          apply intervalIntegral.integral_congr
          intro t ht
          rw [Set.uIcc_of_le hNreal] at ht
          have ht0 : t ≠ 0 := by linarith [ht.1]
          unfold chebyshevRemainder MathExtras.MertensFirstSharp.psiError
          field_simp
          ring
    _ = (∫ _t in (1 : Real)..N, (1 : Real)) +
          ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
            rw [intervalIntegral.integral_add hone hR]
    _ = (N : Real) - 1 +
          ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
            simp

/-- Exact corrected Lemma 6.1 identity at a natural endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
