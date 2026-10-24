# log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6359aaba0aaa3e8d9c923c1fc5fa6f9103cd7e12a506cf1ac5458ad64dac786f",
  "kind": "def",
  "lexical_name": "log",
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
  "slug": "log--93eb5e68cf2cbe9cacb2e152",
  "source": {
    "blob": "eb51518125dfc0f6a1398b6de99ca21d50fbe23a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93eb5e68cf2cbe9cacb2e15235bcab97703cf36579efae1bb0fdbec6df58c282",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6359aaba0aaa3e8d9c923c1fc5fa6f9103cd7e12a506cf1ac5458ad64dac786f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def log (tm : DyTM) (maxDeg nTerms : ℕ) (cfg : DyadicConfig) (maxBits : Nat := 256) : Option DyTM := do
  let a0 := tm.poly.coeff 0
  let p := tm.prec
  -- Check entire function range is positive
  let fBound := tm.bound
  guard (fBound.lo.toRat > 0)
  -- Compute log(a₀) using existing infrastructure
  let a0Rat := a0.toRat
  let a0IRat : IntervalRat := ⟨a0Rat, a0Rat, le_refl a0Rat⟩
  let logA0Rat := IntervalRat.logComputable a0IRat cfg.taylorDepth
  let logA0 := IntervalDyadic.ofIntervalRat logA0Rat p
  -- Build S = (f - a₀)/a₀
  let pPrime : DyPoly := ⟨if tm.poly.coeffs.size > 0
    then #[LeanCert.Core.Dyadic.zero] ++ tm.poly.coeffs.extract 1 tm.poly.coeffs.size
    else #[]⟩
  let sd := tm.shiftedDomain
  let invA0I := invIntervalDyadic (IntervalDyadic.singleton a0) cfg
  let pPrimeBound := pPrime.evalInterval sd p
  let sBound := IntervalDyadic.addRounded
    (IntervalDyadic.mulRounded pPrimeBound invA0I p)
    (IntervalDyadic.mulRounded tm.remainder invA0I p) p
  let sMaxLo := (LeanCert.Core.Dyadic.abs sBound.lo).toRat
  let sMaxHi := (LeanCert.Core.Dyadic.abs sBound.hi).toRat
  let sMax := max sMaxLo sMaxHi
  guard (sMax < 1)
  let invA0Mid := invA0I.midpoint
  let sTM : DyTM :=
    { poly := pPrime.scale invA0Mid |>.normalize maxBits
      remainder := IntervalDyadic.mulRounded tm.remainder invA0I p
      center := tm.center, domain := tm.domain, prec := p }
  -- Initialize with log(a₀)
  let logA0Mid := logA0.midpoint
  let logA0Err := IntervalDyadic.addRounded logA0 (IntervalDyadic.neg (IntervalDyadic.singleton logA0Mid)) p
  let init : DyTM := { poly := DyPoly.const logA0Mid,
                        remainder := logA0Err,
                        center := tm.center, domain := tm.domain, prec := p }
  let unitTM : DyTM := { poly := DyPoly.const LeanCert.Core.Dyadic.one,
                          remainder := IntervalDyadic.singleton LeanCert.Core.Dyadic.zero,
                          center := tm.center, domain := tm.domain, prec := p }
  -- Sum: log(a₀) + Σ_{k=1}^{nTerms} (-1)^{k+1}/k * S^k
  let (acc, _) := (List.range nTerms).foldl (fun (acc, sPow) k =>
    let newPow := DyTM.mul sPow sTM maxDeg maxBits
    let sign := if k % 2 == 0 then LeanCert.Core.Dyadic.one else LeanCert.Core.Dyadic.neg LeanCert.Core.Dyadic.one
    -- Scale by sign/(k+1): approximate as Dyadic
    let kp1 := (k + 1 : Int)
    let scaleFactor := LeanCert.Core.Dyadic.normalize ⟨sign.mantissa, sign.exponent⟩ maxBits  -- ±1
    -- Division by (k+1): scale mantissa of each coeff
    let termPoly : DyPoly := ⟨newPow.poly.coeffs.map (fun c =>
      LeanCert.Core.Dyadic.normalize ⟨c.mantissa * scaleFactor.mantissa / kp1, c.exponent + scaleFactor.exponent⟩ maxBits)⟩
    let kp1Dyad := IntervalDyadic.singleton (LeanCert.Core.Dyadic.ofInt kp1)
    let scaleI := IntervalDyadic.mulRounded (IntervalDyadic.singleton scaleFactor) (invIntervalDyadic kp1Dyad cfg) p
    let termRem := IntervalDyadic.mulRounded newPow.remainder scaleI p
    let term : DyTM := { poly := termPoly, remainder := termRem,
                          center := tm.center, domain := tm.domain, prec := p }
    (DyTM.add acc term, newPow)) (init, unitTM)
  -- Log series remainder: |s|^(n+1) / ((n+1) * (1 - |s|))
  let logRem := sMax ^ (nTerms + 1) / ((nTerms + 1 : ℚ) * (1 - sMax))
  let logRemDyad := IntervalDyadic.ofIntervalRat ⟨-|logRem|, |logRem|,
    neg_le_self (abs_nonneg logRem)⟩ p
  pure { poly := acc.poly.normalize maxBits
         remainder := IntervalDyadic.addRounded acc.remainder logRemDyad p
         center := tm.center, domain := tm.domain, prec := p }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb51518125dfc0f6a1398b6de99ca21d50fbe23a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
