# polyEquivTensor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6e91310c40b551f1a17eb461af26142cadbb11f822461be621b6c8efc4030eb",
  "kind": "def",
  "lexical_name": "polyEquivTensor'",
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
  "slug": "polyequivtensor--fc8040ede956451648535643",
  "source": {
    "blob": "ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 190,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc8040ede95645164853564380149e6b39bd2ce13774e6abbf20a02f145effcc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6e91310c40b551f1a17eb461af26142cadbb11f822461be621b6c8efc4030eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def polyEquivTensor' : A[X] ≃ₐ[A] A ⊗[R] R[X] where
  __ := polyEquivTensor R A
  commutes' a := by simp

/-- `polyEquivTensor' R A` is the same as `polyEquivTensor R A` as a function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
