# gammaR_bracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d70a83eb-a034-2720-eadb-c6ebf40badb2",
  "kind": "theorem",
  "lexical_name": "gammaR_bracket",
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
  "slug": "gammar-bracket--bf01cb996b55d622079f2948",
  "source": {
    "blob": "c20dea055a424677c5dc5552eb2c37eaf86bec60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 106,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf01cb996b55d622079f29482f98dd112eac77b24ce2a1ecf616d571c9fb34c6",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d70a83eb-a034-2720-eadb-c6ebf40badb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaR_bracket (t : ℝ) :
    logDeriv Complex.Gammaℝ (1/2 + t * I) + logDeriv Complex.Gammaℝ (1/2 - t * I)
      = (((Complex.digamma (1/4 + t/2 * I)).re - Real.log Real.pi : ℝ) : ℂ) := by
  have hp : 0 < ((1:ℂ)/2 + t * I).re := by simp
  have hm : 0 < ((1:ℂ)/2 - t * I).re := by simp
  rw [logDeriv_Gammaℝ hp, logDeriv_Gammaℝ hm]
  set w : ℂ := 1/4 + t/2 * I with hw
  have e1 : ((1:ℂ)/2 + t * I) / 2 = w := by rw [hw]; ring
  have e2 : ((1:ℂ)/2 - t * I) / 2 = starRingEnd ℂ w := by
    have : starRingEnd ℂ w = 1/4 - t/2 * I := by
      rw [hw, show (1:ℂ)/4 + (t:ℂ)/2 * I = ((1/4:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I by push_cast; ring]
      simp only [map_add, map_mul, Complex.conj_ofReal, Complex.conj_I]
      push_cast; ring
    rw [this]; ring
  have hwZ : w ∈ Complex.integerComplement := by
    rintro ⟨k, hk⟩
    have := congrArg Complex.re hk
    rw [hw] at this
    simp at this
    -- (k : ℝ) = 1/4 is impossible
    have h4 : (4 * k : ℤ) = (1 : ℤ) := by
      have : (4 : ℝ) * k = 1 := by rw [this]; norm_num
      exact_mod_cast this
    omega
  rw [e1, e2, digamma_conj hwZ]
  -- ψ(w)/2 + conj ψ(w)/2 = Re ψ(w)
  have hre : (1/2 : ℂ) * Complex.digamma w + (1/2 : ℂ) * starRingEnd ℂ (Complex.digamma w)
      = ((Complex.digamma w).re : ℂ) := by
    rw [← mul_add, Complex.add_conj]; push_cast; ring
  push_cast
  linear_combination hre

end WeilEF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20dea055a424677c5dc5552eb2c37eaf86bec60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
