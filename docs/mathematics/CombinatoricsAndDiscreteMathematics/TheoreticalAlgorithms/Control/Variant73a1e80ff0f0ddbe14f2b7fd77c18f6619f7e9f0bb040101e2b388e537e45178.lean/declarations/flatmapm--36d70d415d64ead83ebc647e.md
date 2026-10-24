# flatMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4afcdb331fa97d2e876398c2f8ca94e98a3eeec3021513f9d790c54bb3675585",
  "kind": "def",
  "lexical_name": "flatMapM",
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
  "slug": "flatmapm--36d70d415d64ead83ebc647e",
  "source": {
    "blob": "a6182b40613ce4f32e28e66740e1782c1d1f5e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 231,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Control/Variant73a1e80ff0f0ddbe14f2b7fd77c18f6619f7e9f0bb040101e2b388e537e45178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36d70d415d64ead83ebc647e79916c8f9f84f8a1b49f19b3902ea9ff5f1756f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Control/Variant73a1e80ff0f0ddbe14f2b7fd77c18f6619f7e9f0bb040101e2b388e537e45178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4afcdb331fa97d2e876398c2f8ca94e98a3eeec3021513f9d790c54bb3675585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
noncomputable def flatMapM {m : Type u → Type v} [Monad m] {α : Type w} {β : Type u} (f : α → m (List β)) (as : List α) : m (List β) :=
  let rec loop
    | [],     bs => pure bs.reverse.flatten
    | a :: as, bs => do
      let bs' ← f a
      loop as (bs' :: bs)
  loop as []


/--
Folds a monadic function over a list from the left, accumulating a value starting with `init`. The
accumulated value is combined with the each element of the list in order, using `f`.

Example:
```lean example
example [Monad m] (f : α → β → m α) :
    List.foldlM (m := m) f x₀ [a, b, c] = (do
      let x₁ ← f x₀ a
      let x₂ ← f x₁ b
      let x₃ ← f x₂ c
      pure x₃)
  := by rfl
```
-/
@[specialize, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Control/Variant73a1e80ff0f0ddbe14f2b7fd77c18f6619f7e9f0bb040101e2b388e537e45178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Control/Variant73a1e80ff0f0ddbe14f2b7fd77c18f6619f7e9f0bb040101e2b388e537e45178.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6182b40613ce4f32e28e66740e1782c1d1f5e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
