# inferOrderedSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bee2f8ffc2f41c7ad0b8ef505202ea2f516128e33d206fff65ed8ef528a6b69",
  "kind": "def",
  "lexical_name": "inferOrderedSemiring",
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
  "slug": "inferorderedsemiring--95827a0577602d8d2ecd4540",
  "source": {
    "blob": "9fef0193b80f292e55558568cecf311f7ab98a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95827a0577602d8d2ecd4540d7125df8889b6dcc66f59c0e04e85a814be040c9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bee2f8ffc2f41c7ad0b8ef505202ea2f516128e33d206fff65ed8ef528a6b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inferOrderedSemiring (α : Q(Type u)) : MetaM <|
    (_ : Q(Semiring $α)) × (_ : Q(PartialOrder $α)) × Q(IsOrderedRing $α) :=
  let go := do
    let semiring ← synthInstanceQ q(Semiring $α)
    let partialOrder ← synthInstanceQ q(PartialOrder $α)
    let isOrderedRing ← synthInstanceQ q(IsOrderedRing $α)
    return ⟨semiring, partialOrder, isOrderedRing⟩
  go <|> throwError "not an ordered semiring"

/-- Helper function to synthesize typed `Ring α` `PartialOrder α` `IsOrderedSemiring α`
expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fef0193b80f292e55558568cecf311f7ab98a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
