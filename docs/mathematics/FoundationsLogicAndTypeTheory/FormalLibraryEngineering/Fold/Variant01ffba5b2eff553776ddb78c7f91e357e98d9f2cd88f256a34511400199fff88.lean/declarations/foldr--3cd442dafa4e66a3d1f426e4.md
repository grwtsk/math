# foldr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ed0925b1524739a5a0344cc58635e72bff1200c8a63a6d2cbc65b4412eee0a0",
  "kind": "def",
  "lexical_name": "foldr",
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
  "slug": "foldr--3cd442dafa4e66a3d1f426e4",
  "source": {
    "blob": "3dd631473c41be1663c2a732ea31a1354934ade7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cd442dafa4e66a3d1f426e4b616d9fc8d042ff7361bfcb27abe4a758965fded",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ed0925b1524739a5a0344cc58635e72bff1200c8a63a6d2cbc65b4412eee0a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline, expose] def foldr (n) (f : Fin n → α → α) (init : α) : α := loop n (Nat.le_refl n) init where
  /-- Inner loop for `Fin.foldr`. `Fin.foldr.loop n f i x = f 0 (f ... (f (i-1) x))`  -/
  @[specialize] loop : (i : _) → i ≤ n → α → α
  | 0, _, x => x
  | i+1, h, x => loop i (Nat.le_of_lt h) (f ⟨i, h⟩ x)
  termination_by structural i => i

/--
Folds a monadic function over all the values in `Fin n` from left to right, starting with `0`.

It is the sequence of steps:
```
Fin.foldlM n f x₀ = do
  let x₁ ← f x₀ 0
  let x₂ ← f x₁ 1
  ...
  let xₙ ← f xₙ₋₁ (n-1)
  pure xₙ
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd631473c41be1663c2a732ea31a1354934ade7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
