# max?_eq_some_iff_legacy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b007e35-c8e0-ab33-77cd-ac5cb54d890a",
  "kind": "theorem",
  "lexical_name": "max?_eq_some_iff_legacy",
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
  "slug": "max-eq-some-iff-legacy--d7ca8b99abab4312b6dcc09f",
  "source": {
    "blob": "b715d7f4a2eba1f796135462c2a663f4e3460777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant229efd3c97b6f6c7e15edac5fc73ee5b9c16a6c5c1539cc02546d65e4e60df7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ca8b99abab4312b6dcc09f4d453b38be66a3b7d2841c6cd51e368a09809e64",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant229efd3c97b6f6c7e15edac5fc73ee5b9c16a6c5c1539cc02546d65e4e60df7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b007e35-c8e0-ab33-77cd-ac5cb54d890a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max?_eq_some_iff_legacy [Max α] [LE α] [anti : Std.Antisymm (· ≤ · : α → α → Prop)]
    (le_refl : ∀ a : α, a ≤ a)
    (max_eq_or : ∀ a b : α, max a b = a ∨ max a b = b)
    (max_le_iff : ∀ a b c : α, max b c ≤ a ↔ b ≤ a ∧ c ≤ a) {xs : List α} :
    xs.max? = some a ↔ a ∈ xs ∧ ∀ b ∈ xs, b ≤ a := by
  haveI : MaxEqOr α := ⟨max_eq_or⟩
  haveI : LawfulOrderMax α := .of_max_le_iff (fun _ _ _ => max_le_iff _ _ _) max_eq_or
  haveI : Refl (α := α) (· ≤ ·) := ⟨le_refl⟩
  haveI : IsLinearOrder α := .of_refl_of_antisymm_of_lawfulOrderMax
  apply max?_eq_some_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant229efd3c97b6f6c7e15edac5fc73ee5b9c16a6c5c1539cc02546d65e4e60df7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant229efd3c97b6f6c7e15edac5fc73ee5b9c16a6c5c1539cc02546d65e4e60df7a.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b715d7f4a2eba1f796135462c2a663f4e3460777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
