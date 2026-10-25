# strongSubRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e937ab0f080c8b2b3ca23866b673973e155c5544be66e23a3e730ccbb807365",
  "kind": "def",
  "lexical_name": "strongSubRecursion",
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
  "slug": "strongsubrecursion--c867a5d6b1e9c3e8679b06b9",
  "source": {
    "blob": "4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c867a5d6b1e9c3e8679b06b9f445377ccfb716ae0e17c9e047aff733508edebe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e937ab0f080c8b2b3ca23866b673973e155c5544be66e23a3e730ccbb807365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def strongSubRecursion {P : ℕ → ℕ → Sort*} (H : ∀ m n, (∀ x y, x < m → y < n → P x y) → P m n) :
    ∀ n m : ℕ, P n m
  | n, m => H n m fun x y _ _ ↦ strongSubRecursion H x y

/-- Given `P : ℕ → ℕ → Sort*`, if we have `P m 0` and `P 0 n` for all `m n : ℕ`, and for any
`m n : ℕ` we can extend `P` from `(m, n + 1)` and `(m + 1, n)` to `(m + 1, n + 1)` then we have
`P m n` for all `m n : ℕ`.

Note that for non-`Prop` output it is preferable to use the equation compiler directly if possible,
since this produces equation lemmas. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
