# evalIntPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b64c8fc7ac1a9891b8510407414808d075753f9856fd38d0d6dcc843d31de39",
  "kind": "def",
  "lexical_name": "evalIntPow",
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
  "slug": "evalintpow--0a11e14ba688cab981353d52",
  "source": {
    "blob": "b9d5c56e2a49e66ac169d3272194f373b9d0048a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 535,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a11e14ba688cab981353d5270d34cd67682aab5ad3ef57d2065e05b56b8e829",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b64c8fc7ac1a9891b8510407414808d075753f9856fd38d0d6dcc843d31de39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalIntPow (za : ℤ) (a : Q(ℤ)) (b : Q(ℕ)) : ℤ × (c : Q(ℤ)) × Q(Int.pow $a $b = $c) :=
  have a' : Q(ℕ) := a.appArg!
  if 0 ≤ za then
    haveI : $a =Q .ofNat $a' := ⟨⟩
    let ⟨c, p⟩ := evalNatPow a' b
    ⟨c.natLit!, q(.ofNat $c), q(intPow_ofNat $p)⟩
  else
    haveI : $a =Q .negOfNat $a' := ⟨⟩
    let b' := b.natLit!
    have b₀ : Q(ℕ) := mkRawNatLit (b' >>> 1)
    let ⟨c₀, p⟩ := evalNatPow a' b₀
    let c' := c₀.natLit!
    if b' &&& 1 == 0 then
      have c : Q(ℕ) := mkRawNatLit (c' * c')
      have pc : Q($c₀ * $c₀ = $c) := (q(Eq.refl $c) : Expr)
      have pb : Q(2 * $b₀ = $b) := (q(Eq.refl $b) : Expr)
      ⟨c.natLit!, q(.ofNat $c), q(intPow_negOfNat_bit0 $p $pb $pc)⟩
    else
      have c : Q(ℕ) := mkRawNatLit (c' * (c' * a'.natLit!))
      have pc : Q($c₀ * ($c₀ * $a') = $c) := (q(Eq.refl $c) : Expr)
      have pb : Q(2 * $b₀ + 1 = $b) := (q(Eq.refl $b) : Expr)
      ⟨-c.natLit!, q(.negOfNat $c), q(intPow_negOfNat_bit1 $p $pb $pc)⟩

-- see note [norm_num lemma function equality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9d5c56e2a49e66ac169d3272194f373b9d0048a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
