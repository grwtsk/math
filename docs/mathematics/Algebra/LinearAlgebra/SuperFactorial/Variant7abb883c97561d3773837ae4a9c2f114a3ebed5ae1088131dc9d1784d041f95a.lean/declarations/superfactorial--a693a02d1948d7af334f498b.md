# superFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85f72316ccb7c3f44c527107fbc97de46164bfa0817b9ea31ec96f0837812785",
  "kind": "def",
  "lexical_name": "superFactorial",
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
  "slug": "superfactorial--a693a02d1948d7af334f498b",
  "source": {
    "blob": "8392429ef862d6650d8f81131349d99eb58a061f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a693a02d1948d7af334f498b74c76d1db0da850a31ad4be21873ff5ced8c2062",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85f72316ccb7c3f44c527107fbc97de46164bfa0817b9ea31ec96f0837812785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def superFactorial : ℕ → ℕ
  | 0 => 1
  | succ n => factorial n.succ * superFactorial n

/-- `sf` notation for superfactorial -/
scoped notation "sf" n:60 => Nat.superFactorial n

section SuperFactorial

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8392429ef862d6650d8f81131349d99eb58a061f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
