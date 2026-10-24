# Result.toNNRat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76584393219316ed8199c868c592f293081268892fc7a0ab6b5e001c96d74cc5",
  "kind": "def",
  "lexical_name": "Result.toNNRat'",
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
  "slug": "result-tonnrat--bd7d849cfb0b00ccb0e58409",
  "source": {
    "blob": "69f1f7c68dbbb8fe65b8a71cb26a128d88252f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 437,
    "path": "GRWTSK/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd7d849cfb0b00ccb0e584098a580be8c90467d9129af6102cc796a22ec6b039",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76584393219316ed8199c868c592f293081268892fc7a0ab6b5e001c96d74cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.toNNRat' {α : Q(Type u)} {e : Q($α)}
    (_i : Q(DivisionSemiring $α) := by with_reducible assumption) :
    Result e → Option (Rat × (n : Q(ℕ)) × (d : Q(ℕ)) × Q(IsNNRat $e $n $d))
  | .isNat _ lit proof =>
    have proof : Q(@IsNat _ instAddMonoidWithOne' $e $lit) := proof
    some ⟨lit.natLit!, q($lit), q(nat_lit 1), q(($proof).to_isNNRat)⟩
  | .isNNRat _ q n d proof => some ⟨q, n, d, proof⟩
  | _ => none

/--
Extract from a `Result` the rational value (as both a term and an expression),
and the proof that the original expression is equal to this rational number.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f1f7c68dbbb8fe65b8a71cb26a128d88252f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
