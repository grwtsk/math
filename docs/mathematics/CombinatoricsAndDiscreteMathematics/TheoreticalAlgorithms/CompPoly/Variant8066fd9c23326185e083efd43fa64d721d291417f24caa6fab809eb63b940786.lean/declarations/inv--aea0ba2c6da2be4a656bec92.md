# inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d983a98e339d62e1a4bbb308ca9b69b1cb259a6c9381c104d241d8ee43697ef",
  "kind": "def",
  "lexical_name": "inv",
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
  "slug": "inv--aea0ba2c6da2be4a656bec92",
  "source": {
    "blob": "eb51518125dfc0f6a1398b6de99ca21d50fbe23a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aea0ba2c6da2be4a656bec92d78cf06c1d0f0163bc89cf01d09c0efcc79e2d82",
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

Occurrence: `declaration:3d983a98e339d62e1a4bbb308ca9b69b1cb259a6c9381c104d241d8ee43697ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inv (tm : DyTM) (maxDeg nTerms : ℕ) (cfg : DyadicConfig) (maxBits : Nat := 256) : Option DyTM := do
  let a0 := tm.poly.coeff 0
  let p := tm.prec
  -- Check a0 + remainder doesn't contain zero
  let a0I := IntervalDyadic.addRounded (IntervalDyadic.singleton a0) tm.remainder p
  guard (a0I.hi.toRat < 0 || a0I.lo.toRat > 0)
  -- Build pPrime (polynomial without constant term, shifted)
  let pPrime : DyPoly := ⟨if tm.poly.coeffs.size > 0
    then #[LeanCert.Core.Dyadic.zero] ++ tm.poly.coeffs.extract 1 tm.poly.coeffs.size
    else #[]⟩
  let sd := tm.shiftedDomain
  let pPrimeBound := pPrime.evalInterval sd p
  -- Compute 1/a₀ as interval
  let invA0I := invIntervalDyadic (IntervalDyadic.singleton a0) cfg
  -- S = pPrime/a₀ + remainder/a₀
  let sBound := IntervalDyadic.addRounded
    (IntervalDyadic.mulRounded pPrimeBound invA0I p)
    (IntervalDyadic.mulRounded tm.remainder invA0I p) p
  let sMaxLo := (LeanCert.Core.Dyadic.abs sBound.lo).toRat
  let sMaxHi := (LeanCert.Core.Dyadic.abs sBound.hi).toRat
  let sMax := max sMaxLo sMaxHi
  guard (sMax < 1)
  -- Build S as TM: poly = pPrime * (1/a₀), remainder = tm.remainder * (1/a₀)
  let invA0Mid := invA0I.midpoint
  let sTM : DyTM :=
    { poly := pPrime.scale invA0Mid |>.normalize maxBits
      remainder := IntervalDyadic.mulRounded tm.remainder invA0I p
      center := tm.center, domain := tm.domain, prec := p }
  let negS := sTM.neg
  -- Sum geometric series: Σ (-S)^k for k = 0..nTerms
  let init : DyTM := { poly := DyPoly.const LeanCert.Core.Dyadic.one,
                        remainder := IntervalDyadic.singleton LeanCert.Core.Dyadic.zero,
                        center := tm.center, domain := tm.domain, prec := p }
  let (acc, _) := (List.range nTerms).foldl (fun (acc, curPow) _ =>
    let newPow := DyTM.mul curPow negS maxDeg maxBits
    (DyTM.add acc newPow, newPow)) (init, init)
  -- Geometric series remainder: |s|^(n+1) / (1 - |s|)
  let geomRem := sMax ^ (nTerms + 1) / (1 - sMax)
  let geomRemDyad := IntervalDyadic.ofIntervalRat ⟨-|geomRem|, |geomRem|,
    neg_le_self (abs_nonneg geomRem)⟩ p
  -- Result = (1/a₀) * (acc + geomRem)
  pure { poly := acc.poly.scale invA0Mid |>.normalize maxBits
         remainder := IntervalDyadic.mulRounded invA0I
           (IntervalDyadic.addRounded acc.remainder geomRemDyad p) p
         center := tm.center, domain := tm.domain, prec := p }

/-- Log using series: log(f) = log(a₀) + Σ (-1)^{k+1} Sᵏ/k -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb51518125dfc0f6a1398b6de99ca21d50fbe23a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
