# foldM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0cfe3c883aba9949cdb024fa7f8ddf518efa208f39cd62838d49db742c5ea87",
  "kind": "def",
  "lexical_name": "foldM",
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
  "slug": "foldm--69c77aa08d9fbc74b06d624a",
  "source": {
    "blob": "6ff1d7387450275dd147232a356d610650c96857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variantdc70f4177a81fd9dd6dfe9dc6727c9e8f2547aca71fec89caeadec93f6997d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69c77aa08d9fbc74b06d624a40ab05a3035e491ce891350a416da9d47914398f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variantdc70f4177a81fd9dd6dfe9dc6727c9e8f2547aca71fec89caeadec93f6997d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0cfe3c883aba9949cdb024fa7f8ddf518efa208f39cd62838d49db742c5ea87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def foldM {α : Type u} {m : Type u → Type v} [Monad m] (n : Nat) (f : (i : Nat) → i < n → α → m α) (init : α) : m α :=
  let rec @[specialize] loop : ∀ i, i ≤ n → α → m α
    | 0,   h, a => pure a
    | i+1, h, a => f (n-i-1) (by omega) a >>= loop i (Nat.le_of_succ_le h)
  loop n (by omega) init

/--
Iterates the application of a monadic function `f` to a starting value `init`, `n` times. At each
step, `f` is applied to the current value and to the next natural number less than `n`, in
decreasing order.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variantdc70f4177a81fd9dd6dfe9dc6727c9e8f2547aca71fec89caeadec93f6997d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variantdc70f4177a81fd9dd6dfe9dc6727c9e8f2547aca71fec89caeadec93f6997d88.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff1d7387450275dd147232a356d610650c96857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
