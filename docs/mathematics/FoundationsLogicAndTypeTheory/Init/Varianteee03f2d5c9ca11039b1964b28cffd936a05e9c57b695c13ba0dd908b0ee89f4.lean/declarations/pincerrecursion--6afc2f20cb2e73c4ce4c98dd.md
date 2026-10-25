# pincerRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceeb81d8eb0b8e0fba3277df30d49b5fa13b107f439b78b37dd1f58bef9597a9",
  "kind": "def",
  "lexical_name": "pincerRecursion",
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
  "slug": "pincerrecursion--6afc2f20cb2e73c4ce4c98dd",
  "source": {
    "blob": "15d2ffea4afe33313548a7f6045a38e2e1bb9644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6afc2f20cb2e73c4ce4c98ddffe337d05068337e85872b2ef381d96906d86d85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceeb81d8eb0b8e0fba3277df30d49b5fa13b107f439b78b37dd1f58bef9597a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pincerRecursion {P : ℕ → ℕ → Sort*} (Ha0 : ∀ m : ℕ, P m 0) (H0b : ∀ n : ℕ, P 0 n)
    (H : ∀ x y : ℕ, P x y.succ → P x.succ y → P x.succ y.succ) : ∀ n m : ℕ, P n m
  | m, 0 => Ha0 m
  | 0, n => H0b n
  | Nat.succ _, Nat.succ _ => H _ _ (pincerRecursion Ha0 H0b H _ _) (pincerRecursion Ha0 H0b H _ _)

/-- Decreasing induction: if `P (k+1)` implies `P k` for all `m ≤ k < n`, then `P n` implies `P m`.
Also works for functions to `Sort*`.

Weakens the assumptions of `Nat.decreasingInduction`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d2ffea4afe33313548a7f6045a38e2e1bb9644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
