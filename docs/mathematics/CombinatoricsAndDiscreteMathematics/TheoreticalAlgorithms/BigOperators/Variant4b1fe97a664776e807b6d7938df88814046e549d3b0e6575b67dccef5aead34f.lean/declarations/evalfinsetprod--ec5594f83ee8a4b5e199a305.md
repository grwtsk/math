# evalFinsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c614cf67fa5ca11e5619260926035603d13556453367e2ab12737c7ce855c575",
  "kind": "def",
  "lexical_name": "evalFinsetProd",
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
  "slug": "evalfinsetprod--ec5594f83ee8a4b5e199a305",
  "source": {
    "blob": "068cb591d337b11a9351d80f2c6ced47aac6283c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5594f83ee8a4b5e199a30583f8c641773be31b517c221b51ab5f0ba4c9de92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c614cf67fa5ca11e5619260926035603d13556453367e2ab12737c7ce855c575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalFinsetProd : NormNumExt where eval {u β} e := do
  let .app (.app (.app (.app (.app (.const ``Finset.prod [v, _]) α) β') _) s) f ←
    whnfR e | failure
  guard <| ← withNewMCtxDepth <| isDefEq β β'
  have α : Q(Type v) := α
  have s : Q(Finset $α) := s
  have f : Q($α → $β) := f
  let instCS : Q(CommSemiring $β) ← synthInstanceQ q(CommSemiring $β) <|>
    throwError "not a commutative semiring: {β}"
  let instS : Q(Semiring $β) := q(CommSemiring.toSemiring)
  -- Have to construct this expression manually, `q(1)` doesn't parse correctly:
  let n : Q(ℕ) := .lit (.natVal 1)
  let pf : Q(IsNat (Finset.prod ∅ $f) $n) := q(@Finset.prod_empty $β $α $instCS $f)
  let res_empty := Result.isNat _ n pf

  evalFinsetBigop q(Finset.prod) f res_empty (fun {a s' h} res_fa res_prod_s' ↦ do
      let fa : Q($β) := Expr.app f a
      let res ← evalMul.core q($fa * Finset.prod $s' $f) q(HMul.hMul) _ _ instS res_fa
        res_prod_s'
      let eq : Q(Finset.prod (Finset.cons $a $s' $h) $f = $fa * Finset.prod $s' $f) :=
        q(Finset.prod_cons $h)
      pure <| res.eq_trans eq)
    s

attribute [local instance] monadLiftOptionMetaM in
/-- `norm_num` plugin for evaluating sums of finsets.

If your finset is not supported, you can add it to the match in `Finset.proveEmptyOrCons`.
-/
@[norm_num @Finset.sum _ _ _ _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068cb591d337b11a9351d80f2c6ced47aac6283c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
