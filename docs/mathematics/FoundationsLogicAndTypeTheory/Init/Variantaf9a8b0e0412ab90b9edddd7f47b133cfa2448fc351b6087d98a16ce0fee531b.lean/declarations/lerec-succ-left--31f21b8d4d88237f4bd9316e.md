# leRec_succ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b856723-3fbb-9365-21f0-69c29e1eaefb",
  "kind": "lemma",
  "lexical_name": "leRec_succ_left",
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
  "slug": "lerec-succ-left--31f21b8d4d88237f4bd9316e",
  "source": {
    "blob": "49daebd5449d0fab8de18608b6d111d57f63a75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f21b8d4d88237f4bd9316e60a4f4461a4302d10ed1952187ca7f4f6b55e969",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b856723-3fbb-9365-21f0-69c29e1eaefb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leRec_succ_left {motive : (m : ℕ) → n ≤ m → Sort*}
    (refl le_succ_of_le) {m} (h1 : n ≤ m) (h2 : n + 1 ≤ m) :
    -- the `@` is needed for this to elaborate, even though we only provide explicit arguments!
    @leRec _ _ (le_succ_of_le (Nat.le_refl _) refl)
        (fun _ h ih => le_succ_of_le (le_of_succ_le h) ih) _ h2 =
      leRec (motive := motive) refl le_succ_of_le h1 := by
  rw [leRec_trans _ _ (le_succ n) h2, leRec_succ']

/-- Recursion starting at a non-zero number: given a map `C k → C (k + 1)` for each `k`,
there is a map from `C n` to each `C m`, `n ≤ m`. For a version where the assumption is only made
when `k ≥ n`, see `Nat.leRec`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantaf9a8b0e0412ab90b9edddd7f47b133cfa2448fc351b6087d98a16ce0fee531b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49daebd5449d0fab8de18608b6d111d57f63a75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
