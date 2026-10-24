# evalFinsetSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6219dad08b8dd894e7dd8ceab29797d3a587e0a34a0fbc3624a73553ece6d41",
  "kind": "def",
  "lexical_name": "evalFinsetSum",
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
  "slug": "evalfinsetsum--fe291fd5d93101eb96f93f62",
  "source": {
    "blob": "414386089cf7c6743b64069567eb52dd01c1fba3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe291fd5d93101eb96f93f626e844a10feee00fc35e0b69b26f977c9d8de2435",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6219dad08b8dd894e7dd8ceab29797d3a587e0a34a0fbc3624a73553ece6d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalFinsetSum : NormNumExt where eval {u β} e := do
  let .app (.app (.app (.app (.app (.const ``Finset.sum [v, _]) α) β') _) s) f ←
    whnfR e | failure
  guard <| ← withNewMCtxDepth <| isDefEq β β'
  have α : Q(Type v) := α
  have s : Q(Finset $α) := s
  have f : Q($α → $β) := f
  let instCS : Q(CommSemiring $β) ← synthInstanceQ q(CommSemiring $β) <|>
    throwError "not a commutative semiring: {β}"
  let n : Q(ℕ) := mkRawNatLit 0
  let pf : Q(IsNat (Finset.sum ∅ $f) $n) := q(@Finset.sum_empty $β $α $instCS $f)
  let res_empty := Result.isNat _ n pf

  evalFinsetBigop q(Finset.sum) f res_empty (fun {a s' h} res_fa res_sum_s' ↦ do
      let fa : Q($β) := Expr.app f a
      let res ← evalAdd.core q($fa + Finset.sum $s' $f) q(HAdd.hAdd) _ _ res_fa res_sum_s'
      let eq : Q(Finset.sum (Finset.cons $a $s' $h) $f = $fa + Finset.sum $s' $f) :=
        q(Finset.sum_cons $h)
      pure <| res.eq_trans eq)
    s

end NormNum

end Meta

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `414386089cf7c6743b64069567eb52dd01c1fba3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
