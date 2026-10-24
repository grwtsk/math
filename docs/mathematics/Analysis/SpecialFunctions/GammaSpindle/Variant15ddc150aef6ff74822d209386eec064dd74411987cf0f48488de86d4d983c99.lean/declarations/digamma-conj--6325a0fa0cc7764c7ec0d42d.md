# digamma_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ca2c997-b58d-dbaa-7ed4-f4f2ed652c7d",
  "kind": "theorem",
  "lexical_name": "digamma_conj",
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
  "slug": "digamma-conj--6325a0fa0cc7764c7ec0d42d",
  "source": {
    "blob": "3830ee6d5869dd3e096bccfadb544f35a63125f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6325a0fa0cc7764c7ec0d42de296276180a72055b657c42dc40a02382faec052",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca2c997-b58d-dbaa-7ed4-f4f2ed652c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digamma_conj (z : ℂ) :
    Complex.digamma (conj z) = conj (Complex.digamma z) := by
  have gammaFixed :
      (conj ∘ Complex.Gamma ∘ conj) = Complex.Gamma := by
    funext w
    simp [Function.comp_apply, Complex.Gamma_conj]
  have derivativeConj :=
    congrFun (deriv_conj_conj (f := Complex.Gamma)) (conj z)
  rw [gammaFixed] at derivativeConj
  have derivativeIdentity :
      deriv Complex.Gamma (conj z) =
        conj (deriv Complex.Gamma z) := by
    simpa [Function.comp_apply] using derivativeConj
  rw [Complex.digamma_def, logDeriv_apply, logDeriv_apply,
    derivativeIdentity, Complex.Gamma_conj]
  exact (map_div₀ (starRingEnd ℂ) _ _).symm

/-- Critical-line Gamma value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3830ee6d5869dd3e096bccfadb544f35a63125f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
