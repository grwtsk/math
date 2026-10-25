# Mem.decidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e4f9acd0dd7225d61a80850b49c116293ef72d0f5c9a2aadcf84aa6f2e7fc67",
  "kind": "instance",
  "lexical_name": "Mem.decidable",
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
  "slug": "mem-decidable--2dff40fa6c7c8e906ec5897e",
  "source": {
    "blob": "0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dff40fa6c7c8e906ec5897eaf5c1e16eabdf1dfa6b6ee99868cfe9425789b2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e4f9acd0dd7225d61a80850b49c116293ef72d0f5c9a2aadcf84aa6f2e7fc67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Mem.decidable {α} [DecidableEq α] (x : α) : ∀ xs : LazyList α, Decidable (x ∈ xs)
  | LazyList.nil => by
    apply Decidable.isFalse
    simp [Membership.mem, LazyList.Mem]
  | LazyList.cons y ys =>
    if h : x = y then by
      apply Decidable.isTrue
      simp only [Membership.mem, LazyList.Mem]
      exact Or.inl h
    else by
      have := Mem.decidable x ys.get
      have : (x ∈ ys.get) ↔ (x ∈ cons y ys) := by simp [(· ∈ ·), LazyList.Mem, h]
      exact decidable_of_decidable_of_iff this
#align lazy_list.mem.decidable LazyList.Mem.decidable

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
