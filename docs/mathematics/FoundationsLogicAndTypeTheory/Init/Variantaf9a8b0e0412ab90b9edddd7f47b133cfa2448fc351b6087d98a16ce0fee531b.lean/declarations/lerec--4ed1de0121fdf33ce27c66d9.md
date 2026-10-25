# leRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7d6bc01e621f7291ce64993baa5feec8012e2b80539fdfc503ad90981084f36",
  "kind": "def",
  "lexical_name": "leRec",
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
  "slug": "lerec--4ed1de0121fdf33ce27c66d9",
  "source": {
    "blob": "49daebd5449d0fab8de18608b6d111d57f63a75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ed1de0121fdf33ce27c66d979feedab6b494ad4c278a1e93046aaaa6773d63f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7d6bc01e621f7291ce64993baa5feec8012e2b80539fdfc503ad90981084f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leRec {n} {motive : (m : ℕ) → n ≤ m → Sort*}
    (refl : motive n (Nat.le_refl _))
    (le_succ_of_le : ∀ ⦃k⦄ (h : n ≤ k), motive k h → motive (k + 1) (le_succ_of_le h)) :
    ∀ {m} (h : n ≤ m), motive m h
  | 0, H => Nat.eq_zero_of_le_zero H ▸ refl
  | m + 1, H =>
    (le_succ_iff.1 H).by_cases
      (fun h : n ≤ m ↦ le_succ_of_le h <| leRec refl le_succ_of_le h)
      (fun h : n = m + 1 ↦ h ▸ refl)

-- This verifies the signatures of the recursor matches the builtin one, as promised in the
-- above.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49daebd5449d0fab8de18608b6d111d57f63a75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
