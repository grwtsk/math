# Result.toRawEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a49c13909de21685ce72e5d3bf120486d13434e6f0ed00450481434f53ef59d",
  "kind": "def",
  "lexical_name": "Result.toRawEq",
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
  "slug": "result-toraweq--2fd131ecc7dbb5720792044e",
  "source": {
    "blob": "0f6b328574094be8ac34357633d5aaec21a6727d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 479,
    "path": "GRWTSK/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fd131ecc7dbb5720792044ef0eba36b965d25d276edeabdc3153ea3425e663f",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a49c13909de21685ce72e5d3bf120486d13434e6f0ed00450481434f53ef59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.toRawEq {α : Q(Type u)} {e : Q($α)} : Result e → (e' : Q($α)) × Q($e = $e')
  | .isBool false p =>
    have e : Q(Prop) := e; have p : Q(¬$e) := p
    ⟨(q(False) : Expr), (q(eq_false $p) : Expr)⟩
  | .isBool true p =>
    have e : Q(Prop) := e; have p : Q($e) := p
    ⟨(q(True) : Expr), (q(eq_true $p) : Expr)⟩
  | .isNat _ lit p => ⟨q(Nat.rawCast $lit), q(IsNat.to_raw_eq $p)⟩
  | .isNegNat _ lit p => ⟨q(Int.rawCast (.negOfNat $lit)), q(IsInt.to_raw_eq $p)⟩
  | .isNNRat _ _ n d p => ⟨q(NNRat.rawCast $n $d), q(IsNNRat.to_raw_eq $p)⟩
  | .isNegNNRat _ _ n d p => ⟨q(Rat.rawCast (.negOfNat $n) $d), q(IsRat.to_raw_eq $p)⟩

/--
`Result.toRawEq` but providing an integer. Given a `NormNum.Result e` for something known to be an
integer (which uses `IsNat` or `IsInt` to express equality to an integer numeral), converts it to
an equality `e = Nat.rawCast n` or `e = Int.rawCast n` to a raw cast expression, so it can be used
for rewriting. Gives `none` if not an integer.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f6b328574094be8ac34357633d5aaec21a6727d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
