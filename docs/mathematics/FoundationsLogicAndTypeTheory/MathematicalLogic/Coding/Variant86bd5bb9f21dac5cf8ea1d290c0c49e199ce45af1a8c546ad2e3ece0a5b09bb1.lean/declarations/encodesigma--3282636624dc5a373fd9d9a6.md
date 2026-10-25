# encodeSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9b21e60be988204c294269e81009cdd8de6ba83a41a0b58b07bb0d63928ffd2",
  "kind": "def",
  "lexical_name": "encodeSigma",
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
  "slug": "encodesigma--3282636624dc5a373fd9d9a6",
  "source": {
    "blob": "34842f544b53c9ed6b375df6fce249942bd7ac12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3282636624dc5a373fd9d9a658dd466a44e2c64b45e16f3ecb8fbc4eadd63780",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9b21e60be988204c294269e81009cdd8de6ba83a41a0b58b07bb0d63928ffd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def encodeSigma (f : Fin n → Nat) (x : (i : Fin n) × Fin (f i)) : Fin (Fin.sum f) :=
  match n, f, x with
  | _+1, f, ⟨0, j⟩ =>
    ⟨j, Nat.lt_of_lt_of_le j.is_lt (sum_succ f .. ▸ Nat.le_add_right ..)⟩
  | _+1, f, ⟨⟨i+1, hi⟩, j⟩ =>
    match encodeSigma ((f ·.succ)) ⟨⟨i, Nat.lt_of_succ_lt_succ hi⟩, j⟩ with
    | ⟨k, hk⟩ => ⟨f 0 + k, sum_succ f .. ▸ Nat.add_lt_add_left hk ..⟩

/-- Decode `(i : Fin n) × Fin (f i)` from `Fin (Fin.sum f)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34842f544b53c9ed6b375df6fce249942bd7ac12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
