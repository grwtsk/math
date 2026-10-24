# paperInputsChi_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe4856e5-2c11-6aa2-f2e5-97386bfda990",
  "kind": "theorem",
  "lexical_name": "paperInputsChi_L",
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
  "slug": "paperinputschi-l--9b610989a92f699e11ad6405",
  "source": {
    "blob": "b4cb89bc9e49a0d6e792428fd11400f3d788b009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantad5d82cdd17126d32d23d0f11e4ea54539e4119cc4e54f0c8b30a628e2ef03c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b610989a92f699e11ad64055d5a4fede7f131e3a3b05a0ddbb6767565f9040c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantad5d82cdd17126d32d23d0f11e4ea54539e4119cc4e54f0c8b30a628e2ef03c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe4856e5-2c11-6aa2-f2e5-97386bfda990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperInputsChi_L (hq : 1 < q) (hprim : χ.IsPrimitive) :
    PaperInputsChi (parity χ) q (coeff χ) (LZeros (LSeam_of hq hprim)) :=
  PaperInputsChi.of_EF hq hprim
    (explicitFormulaPaperChi_of_lit (EF_lit_chi_L hq hprim)
      (GammaChi.gammaFactsChi parity_le_one (by omega)) (by omega)
      (coeffUnimodular_of_primitive hq hprim).toCoeffOK)

/-- **Theorem E, bound 1, no hypotheses**: for every primitive Dirichlet character mod q > 1,
at least (2/3 − ε)·N_χ(T,2T) of the zeros of Mathlib's `DirichletCharacter.LFunction χ` with
ordinate in (T,2T], counted with multiplicity, are matched by distinct critical-line zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantad5d82cdd17126d32d23d0f11e4ea54539e4119cc4e54f0c8b30a628e2ef03c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantad5d82cdd17126d32d23d0f11e4ea54539e4119cc4e54f0c8b30a628e2ef03c1.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4cb89bc9e49a0d6e792428fd11400f3d788b009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
