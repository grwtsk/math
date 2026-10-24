# posLog_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7814061a7716078ff4d755b158f6c07712a26b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4e8f484-1bd8-279f-491f-e89eb0eb324a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:304d7856-89f2-fddf-b15c-1dc72418b5cd",
  "kind": "theorem",
  "lexical_name": "posLog_prod",
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
  "slug": "poslog-prod--64b97177301a0dbfa7df41c7",
  "source": {
    "blob": "7814061a7716078ff4d755b158f6c07712a26b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b97177301a0dbfa7df41c75848676c60b4918f311e8a674c8ab35606d37936",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304d7856-89f2-fddf-b15c-1dc72418b5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posLog_prod {α : Type*} (s : Finset α) (f : α → ℝ) :
    log⁺ (∏ t ∈ s, f t) ≤ ∑ t ∈ s, log⁺ (f t) := by
  classical
  induction s using Finset.induction with
  | empty => simp [posLog]
  | insert a s ha hs =>
    calc log⁺ (∏ t ∈ insert a s, f t)
    _ = log⁺ (f a * ∏ t ∈ s, f t) := by rw [Finset.prod_insert ha]
    _ ≤ log⁺ (f a) + log⁺ (∏ t ∈ s, f t) := posLog_mul
    _ ≤ log⁺ (f a) + ∑ t ∈ s, log⁺ (f t) := add_le_add (by rfl) hs
    _ = ∑ t ∈ insert a s, log⁺ (f t) := by rw [Finset.sum_insert ha]

/-!
## Estimates for Sums
-/

/-- Estimate for `log⁺` of a sum. See `Real.posLog_add` for a variant involving
just two summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7814061a7716078ff4d755b158f6c07712a26b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
