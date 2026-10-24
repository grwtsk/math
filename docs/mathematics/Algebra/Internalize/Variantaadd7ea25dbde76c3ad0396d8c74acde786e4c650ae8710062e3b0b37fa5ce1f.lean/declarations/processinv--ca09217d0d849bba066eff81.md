# processInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3c1f7042dd7a3b1bcf2cd8fd6dfc9cd566fd527752f777c6ea12282302094c2",
  "kind": "def",
  "lexical_name": "processInv",
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
  "slug": "processinv--ca09217d0d849bba066eff81",
  "source": {
    "blob": "4a0b0503bc0b46bf0ff88d16c72127da7155f7c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 87,
    "path": "GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca09217d0d849bba066eff815080521e11f770d426ede992d50739ca36f72934",
  "verification": {
    "reference": "docs/verification/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3c1f7042dd7a3b1bcf2cd8fd6dfc9cd566fd527752f777c6ea12282302094c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processInv (e inst a : Expr) : RingM Unit := do
  unless (← isInvInst inst) do return ()
  let ring ← getCommRing
  let some fieldInst := ring.fieldInst? | return ()
  if (← getCommRing).invSet.contains a then return ()
  modifyCommRing fun s => { s with invSet := s.invSet.insert a }
  if let some k ← toInt? a then
    if k == 0 then
      /-
      **Remark:** We have a normalization rule for `0⁻¹ = 0`, but we may still encounter `0⁻¹` for one of the following reasons:
      - `0⁻¹` appears in a subterm that cannot be rewritten by `simp` without introducing a type error.
      - `preprocessLight`, which does not apply `simp`, was used to preprocess the term. Even if we extended `preprocessLight` to
        apply `rfl` theorems, it would not be enough since `0⁻¹ = 0` is not a `rfl` theorem.
      -/
      pushEq e a <| mkApp2 (mkConst ``Grind.Field.inv_zero [ring.u]) ring.type fieldInst
      return ()
    if (← hasChar) then
      let (charInst, c) ← getCharInst
      if c == 0 then
        let expected ← mkEq (mkApp2 (← getMulFn) a e) (← denoteNum 1)
        pushNewFact <| mkExpectedPropHint
          (mkApp5 (mkConst ``Grind.CommRing.inv_int_eq [ring.u]) ring.type fieldInst charInst (mkIntLit k) eagerReflBoolTrue)
          expected
      else if k % c == 0 then
        let expected ← mkEq e (← denoteNum 0)
        pushNewFact <| mkExpectedPropHint
          (mkApp6 (mkConst ``Grind.CommRing.inv_zero_eqC [ring.u]) ring.type (mkNatLit c) fieldInst charInst (mkIntLit k) eagerReflBoolTrue)
          expected
      else
        let expected ← mkEq (mkApp2 (← getMulFn) a e) (← denoteNum 1)
        pushNewFact <| mkExpectedPropHint
          (mkApp6 (mkConst ``Grind.CommRing.inv_int_eqC [ring.u]) ring.type (mkNatLit c) fieldInst charInst (mkIntLit k) eagerReflBoolTrue)
          expected
      return ()
  pushNewFact <| mkApp3 (mkConst ``Grind.CommRing.inv_split [ring.u]) ring.type fieldInst a

/--
For each new variable `x` in a ring with `PowIdentity α p`,
push the equation `x ^ p = x` as a new fact into grind.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0b0503bc0b46bf0ff88d16c72127da7155f7c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
