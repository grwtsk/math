# take_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd7df879-311d-0bbf-aaad-2f6f55bc36e5",
  "kind": "theorem",
  "lexical_name": "take_theorem",
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
  "slug": "take-theorem--e0f66fbc74b93cd0dd3ba018",
  "source": {
    "blob": "2b620a850c450cec1ce74dec280bbdde63376496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 634,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Variant7fb21855fe2952a9a5d36e33d46400923171516fb6b4d794a666575cef31e0d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f66fbc74b93cd0dd3ba0186d84c152616f4c5b57800afb7548368462dbf45e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Variant7fb21855fe2952a9a5d36e33d46400923171516fb6b4d794a666575cef31e0d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd7df879-311d-0bbf-aaad-2f6f55bc36e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem take_theorem (s₁ s₂ : Stream' α) : (∀ n : Nat, take n s₁ = take n s₂) → s₁ = s₂ := by
  intro h; apply Stream'.ext; intro n
  induction' n with n _
  · have aux := h 1
    simp [take] at aux
    exact aux
  · have h₁ : some (nth s₁ (succ n)) = some (nth s₂ (succ n)) := by
      rw [← get?_take_succ, ← get?_take_succ, h (succ (succ n))]
    injection h₁
#align stream.take_theorem Stream'.take_theorem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Variant7fb21855fe2952a9a5d36e33d46400923171516fb6b4d794a666575cef31e0d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Variant7fb21855fe2952a9a5d36e33d46400923171516fb6b4d794a666575cef31e0d0.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b620a850c450cec1ce74dec280bbdde63376496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
