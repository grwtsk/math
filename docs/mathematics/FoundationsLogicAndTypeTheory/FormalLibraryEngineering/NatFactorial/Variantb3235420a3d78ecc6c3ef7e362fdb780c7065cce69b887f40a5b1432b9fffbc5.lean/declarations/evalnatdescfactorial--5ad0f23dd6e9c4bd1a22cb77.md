# evalNatDescFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:649f9ebc089737b67063cf5cc3968b9ac714029ce329eb2c05b73de5e9c2e6b7",
  "kind": "def",
  "lexical_name": "evalNatDescFactorial",
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
  "slug": "evalnatdescfactorial--5ad0f23dd6e9c4bd1a22cb77",
  "source": {
    "blob": "ce27881347b719c784a82a550072f2e2210f973c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ad0f23dd6e9c4bd1a22cb775f7c877f9de96b679f57878f6c93064fb3d10ee6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:649f9ebc089737b67063cf5cc3968b9ac714029ce329eb2c05b73de5e9c2e6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNatDescFactorial : NormNumExt where eval {u α} e := do
  let .app (.app _ (x' : Q(ℕ))) (y' : Q(ℕ)) ← Meta.whnfR e | failure
  have : u =QL 0 := ⟨⟩
  have : $α =Q ℕ := ⟨⟩
  have : $e =Q Nat.descFactorial $x' $y' := ⟨⟩
  let sℕ : Q(AddMonoidWithOne ℕ) := q(instAddMonoidWithOneNat)
  let ⟨x, p₁⟩ ← deriveNat x' sℕ
  let ⟨y, p₂⟩ ← deriveNat y' sℕ
  if x.natLit! ≥ y.natLit! then
    have z : Q(ℕ) := mkRawNatLit (x.natLit! - y.natLit!)
    have : $x =Q $z + $y := ⟨⟩
    let ⟨val, prf⟩ := evalNatDescFactorialNotZero (x' := x') (y' := y') x y z ‹_› p₁ p₂
    return .isNat sℕ val q($prf)
  else
    have z : Q(ℕ) := mkRawNatLit (y.natLit! - x.natLit! - 1)
    have : $y =Q $z + $x + 1 := ⟨⟩
    let ⟨val, prf⟩ := evalNatDescFactorialZero (x' := x') (y' := y') x y z ‹_› p₁ p₂
    return .isNat sℕ val q($prf)

end NormNum

end Meta

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce27881347b719c784a82a550072f2e2210f973c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
