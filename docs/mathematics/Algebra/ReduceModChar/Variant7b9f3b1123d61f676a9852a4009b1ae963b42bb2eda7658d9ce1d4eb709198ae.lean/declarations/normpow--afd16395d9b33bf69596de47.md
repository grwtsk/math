# normPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33349eb41338bde717b0ca69105c29aa22ad54d76b045ca7298d80495acec162",
  "kind": "def",
  "lexical_name": "normPow",
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
  "slug": "normpow--afd16395d9b33bf69596de47",
  "source": {
    "blob": "d386b56ef496e6d134bae2380548d2e3b277d89c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afd16395d9b33bf69596de47b3c7681778490e5ce8fb245c3d11184d3c77828a",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33349eb41338bde717b0ca69105c29aa22ad54d76b045ca7298d80495acec162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def normPow {α : Q(Type u)} (n n' : Q(ℕ)) (pn : Q(IsNat «$n» «$n'»)) (e : Q($α))
      (_ : Q(Ring $α)) (instCharP : Q(CharP $α $n)) : MetaM (Result e) := do
    let .app (.app (f : Q($α → ℕ → $α)) (a : Q($α))) (b : Q(ℕ)) ← whnfR e | failure
    let .isNat sα na pa ← normIntNumeral' n n' pn a _ instCharP | failure
    let ⟨nb, pb⟩ ← Mathlib.Meta.NormNum.deriveNat b q(instAddMonoidWithOneNat)
    guard <|← withNewMCtxDepth <| isDefEq f q(HPow.hPow (α := $α))
    haveI' : $e =Q $a ^ $b := ⟨⟩
    haveI' : $f =Q HPow.hPow := ⟨⟩
    have ⟨c, r⟩ := evalNatPowMod na nb n'
    assumeInstancesCommute
    return .isNat sα c q(CharP.isNat_pow (f := $f) $instCharP (.refl $f) $pa $pb $pn $r)

  /-- If `e` is of the form `a ^ b`, reduce it using fast modular exponentiation, otherwise
      reduce it using `norm_num`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d386b56ef496e6d134bae2380548d2e3b277d89c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
