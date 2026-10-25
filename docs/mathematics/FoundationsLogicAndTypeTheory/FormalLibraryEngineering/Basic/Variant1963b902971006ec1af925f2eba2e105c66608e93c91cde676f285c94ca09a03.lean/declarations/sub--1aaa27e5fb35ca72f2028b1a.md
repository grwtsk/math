# sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9466a9bd0afd544e2d2c8ac621252d1d0b6c4ad0dce43dfc422f815800a8cbd3",
  "kind": "def",
  "lexical_name": "sub",
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
  "slug": "sub--1aaa27e5fb35ca72f2028b1a",
  "source": {
    "blob": "5331e5b2d4116e1572d6d2d79d882b4d673a4007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1963b902971006ec1af925f2eba2e105c66608e93c91cde676f285c94ca09a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1aaa27e5fb35ca72f2028b1a4d58b8a4702780c8d6263745e3ed112462e72f0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1963b902971006ec1af925f2eba2e105c66608e93c91cde676f285c94ca09a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9466a9bd0afd544e2d2c8ac621252d1d0b6c4ad0dce43dfc422f815800a8cbd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
protected def sub : Fin n → Fin n → Fin n
  /-
  The definition of `Fin.sub` has been updated to improve performance.
  The right-hand-side of the following `match` was originally
  ```
  ⟨(a + (n - b)) % n, mlt h⟩
  ```
  This caused significant performance issues when testing definitional equality,
  such as `x =?= x - 1` where `x : Fin n` and `n` is a big number,
  as Lean spent a long time reducing
  ```
  ((n - 1) + x.val) % n
  ```
  For example, this was an issue for `Fin 2^64` (i.e., `UInt64`).
  This change improves performance by leveraging the fact that `Nat.add` is defined
  using recursion on the second argument.
  See issue #4413.
  -/
  | ⟨a, h⟩, ⟨b, _⟩ => ⟨((n - b) + a) % n, by exact mlt h⟩

/-!
Remark: land/lor can be defined without using (% n), but
we are trying to minimize the number of Nat theorems
needed to bootstrap Lean.
-/

/--
Modulus of bounded numbers, usually invoked via the `%` operator.

The resulting value is that computed by the `%` operator on `Nat`.
-/
@[implicit_reducible]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1963b902971006ec1af925f2eba2e105c66608e93c91cde676f285c94ca09a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1963b902971006ec1af925f2eba2e105c66608e93c91cde676f285c94ca09a03.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5331e5b2d4116e1572d6d2d79d882b4d673a4007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
