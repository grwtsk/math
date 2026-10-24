# endpointPolynomialCorrelation_eq_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1b85a44-e6ec-374c-e7d1-85ab2a178486",
  "kind": "theorem",
  "lexical_name": "endpointPolynomialCorrelation_eq_full",
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
  "slug": "endpointpolynomialcorrelation-eq-full--13f9d61c4d7b860293dc5a82",
  "source": {
    "blob": "866d393e3a3d483f1b5ba647297771c91682037b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 36,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant36de42f469cec33b4effccc90474b43fbf792d8d47c175d54b27f8f12205c650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13f9d61c4d7b860293dc5a823c71d6e830a5492eae97da23e4ee4587565d86be",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant36de42f469cec33b4effccc90474b43fbf792d8d47c175d54b27f8f12205c650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1b85a44-e6ec-374c-e7d1-85ab2a178486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomialCorrelation_eq_full (a y : ℝ) :
    endpointPolynomialCorrelation a y=endpointFullPolynomial a y := by
  have he : (fun s : ℝ => endpointInteriorPolynomial a s*endpointInteriorPolynomial a (y-s))=
    fun s => (36864*y^2-768*y^4-122880*a*y^3+1536*a*y^5+138240*a^2*y^4-1152*a^2*y^6-64512*a^3*y^5+384*a^3*y^7+10752*a^4*y^6-48*a^4*y^8)*s^2+
      (-73728*y+3072*y^3+245760*a*y^2-5120*a*y^4-143360*a^2*y^3+1792*a^2*y^5-138240*a^3*y^4+1152*a^3*y^6+150528*a^4*y^5-896*a^4*y^7-35840*a^5*y^6+160*a^5*y^8)*s^3+
      (36864-5376*y^2+16*y^4-122880*a*y+7680*a*y^3-32*a*y^5-261120*a^2*y^2+2560*a^2*y^4+24*a^2*y^6+737280*a^3*y^3-7872*a^3*y^5-8*a^3*y^7-395520*a^4*y^4+3072*a^4*y^6+1*a^4*y^8-26880*a^5*y^5+160*a^5*y^7+40320*a^6*y^6-180*a^6*y^8)*s^4+
      (4608*y-64*y^3-6144*a*y^2+128*a*y^4+399360*a^2*y-10240*a^2*y^3-80*a^2*y^5-801792*a^3*y^2+15744*a^3*y^4+8*a^3*y^6+76800*a^4*y^3-2304*a^4*y^5+8*a^4*y^7+430080*a^5*y^4-3136*a^5*y^6-2*a^5*y^8-129024*a^6*y^5+768*a^6*y^7-18816*a^7*y^6+84*a^7*y^8)*s^5+
      (-1536+96*y^2+2048*a*y-192*a*y^3-133120*a^2+13568*a^2*y^2+64*a^2*y^4+267264*a^3*y-16896*a^3*y^3+72*a^3*y^5+486912*a^4*y^2-4384*a^4*y^4-48*a^4*y^6-770560*a^5*y^3+8960*a^5*y^5+4*a^5*y^7+80640*a^6*y^4-1008*a^6*y^6+(3/2:ℝ)*a^6*y^8+94080*a^7*y^5-560*a^7*y^7+3136*a^8*y^6-14*a^8*y^8)*s^6+
      (-64*y+128*a*y^2-8704*a^2*y+64*a^2*y^3+9984*a^3*y^2-208*a^3*y^4-439296*a^4*y+11904*a^4*y^3+80*a^4*y^5+537600*a^5*y^2-13120*a^5*y^4+16*a^5*y^6+161280*a^6*y^3-672*a^6*y^5-8*a^6*y^7-188160*a^7*y^4+1680*a^7*y^6-(1/2:ℝ)*a^7*y^8-18816*a^8*y^5+112*a^8*y^7)*s^7+
      (16-32*a*y+2176*a^2-136*a^2*y^2-2496*a^3*y+232*a^3*y^3+109824*a^4-12336*a^4*y^2-29*a^4*y^4-134400*a^5*y+11200*a^5*y^3-70*a^5*y^5-282240*a^6*y^2+4020*a^6*y^4+(31/2:ℝ)*a^6*y^6+188160*a^7*y^3-2940*a^7*y^5+(7/2:ℝ)*a^7*y^7+47040*a^8*y^4-406*a^8*y^6+(1/16:ℝ)*a^8*y^8)*s^8+
      (80*a^2*y-120*a^3*y^2+6240*a^4*y-60*a^4*y^3-5280*a^5*y^2+110*a^5*y^4+161280*a^6*y-6000*a^6*y^3-9*a^6*y^5-94080*a^7*y^2+3220*a^7*y^4-(21/2:ℝ)*a^7*y^6-62720*a^8*y^3+868*a^8*y^5-(1/2:ℝ)*a^8*y^7)*s^9+
      (-16*a^2+24*a^3*y-1248*a^4+78*a^4*y^2+1056*a^5*y-88*a^5*y^3-32256*a^6+4632*a^6*y^2-(25/2:ℝ)*a^6*y^4+18816*a^7*y-2184*a^7*y^3+(35/2:ℝ)*a^7*y^5+47040*a^8*y^2-1190*a^8*y^4+(7/4:ℝ)*a^8*y^6)*s^10+
      (-36*a^4*y+36*a^5*y^2-1872*a^6*y+26*a^6*y^3+840*a^7*y^2-(35/2:ℝ)*a^7*y^4-18816*a^8*y+1064*a^8*y^3-(7/2:ℝ)*a^8*y^5)*s^11+
      (6*a^4-6*a^5*y+312*a^6-(39/2:ℝ)*a^6*y^2-140*a^7*y+(21/2:ℝ)*a^7*y^3+3136*a^8-602*a^8*y^2+(35/8:ℝ)*a^8*y^4)*s^12+
      (7*a^6*y-(7/2:ℝ)*a^7*y^2+196*a^8*y-(7/2:ℝ)*a^8*y^3)*s^13+
      (-1*a^6+(1/2:ℝ)*a^7*y-28*a^8+(7/4:ℝ)*a^8*y^2)*s^14+
      (-(1/2:ℝ)*a^8*y)*s^15+
      ((1/16:ℝ)*a^8)*s^16 := by
    funext s
    dsimp [endpointInteriorPolynomial]
    ring
  unfold endpointPolynomialCorrelation
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,
      intervalIntegral.integral_const_mul,integral_pow]
  dsimp [endpointFullPolynomial]
  ring

/-- Full source correlation expansion, with all original normalization factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant36de42f469cec33b4effccc90474b43fbf792d8d47c175d54b27f8f12205c650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant36de42f469cec33b4effccc90474b43fbf792d8d47c175d54b27f8f12205c650.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `866d393e3a3d483f1b5ba647297771c91682037b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
