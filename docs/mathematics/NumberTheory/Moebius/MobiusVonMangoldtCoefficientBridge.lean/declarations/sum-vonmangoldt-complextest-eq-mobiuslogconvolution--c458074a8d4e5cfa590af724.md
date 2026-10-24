# sum_vonMangoldt_complexTest_eq_mobiusLogConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bb98d5c-f4c0-dcee-e5fe-576f905a9b58",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_complexTest_eq_mobiusLogConvolution",
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
  "slug": "sum-vonmangoldt-complextest-eq-mobiuslogconvolution--c458074a8d4e5cfa590af724",
  "source": {
    "blob": "9a8a9adc1ef1cb3d5a5bc40e016de055edb1adb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c458074a8d4e5cfa590af7247d1640d53edee07f5bedb63bf220a74b0d7e73b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bb98d5c-f4c0-dcee-e5fe-576f905a9b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_complexTest_eq_mobiusLogConvolution
    (S : Finset ℕ) (F : ℕ → ℂ) :
    (∑ n ∈ S, (ArithmeticFunction.vonMangoldt n : ℂ) * F n) =
      ∑ n ∈ S,
        (∑ p ∈ n.divisorsAntidiagonal,
          ((ArithmeticFunction.moebius p.1 : ℝ) : ℂ) *
            (ArithmeticFunction.log p.2 : ℂ)) * F n := by
  apply Finset.sum_congr rfl
  intro n hn
  have h := vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log n
  simpa only [Complex.ofReal_sum, Complex.ofReal_mul] using
    congrArg (fun x : ℝ => (x : ℂ) * F n) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8a9adc1ef1cb3d5a5bc40e016de055edb1adb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
