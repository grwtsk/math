# evalNatDescFactorialZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9117d47392d3a29a3a2583fe8912c3cf9f64fda614af442d1f9026d88de8283",
  "kind": "def",
  "lexical_name": "evalNatDescFactorialZero",
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
  "slug": "evalnatdescfactorialzero--cf264262472eae920a8b712f",
  "source": {
    "blob": "ce27881347b719c784a82a550072f2e2210f973c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf264262472eae920a8b712f4ca9cb943b962512fdacf1392ad0fd0c4d0d0cac",
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

Occurrence: `declaration:f9117d47392d3a29a3a2583fe8912c3cf9f64fda614af442d1f9026d88de8283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalNatDescFactorialZero {x' y' : Q(ℕ)} (x y z : Q(ℕ))
    (_hy : $y =Q $z + $x + 1)
    (px : Q(IsNat $x' $x)) (py : Q(IsNat $y' $y)) :
    (n : Q(ℕ)) × Q(IsNat (descFactorial $x' $y') $n) :=
  ⟨q(nat_lit 0), q(isNat_descFactorial_zero $z $px $py rfl)⟩

/-- Evaluates the `Nat.descFactorial` function. -/
@[nolint unusedHavesSuffices, norm_num Nat.descFactorial _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce27881347b719c784a82a550072f2e2210f973c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
