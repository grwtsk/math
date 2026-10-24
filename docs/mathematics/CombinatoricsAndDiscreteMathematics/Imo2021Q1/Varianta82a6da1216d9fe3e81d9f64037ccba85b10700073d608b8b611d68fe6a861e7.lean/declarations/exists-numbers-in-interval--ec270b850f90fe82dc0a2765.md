# exists_numbers_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:658e53e5-2941-ce2a-730a-6068075a727f",
  "kind": "lemma",
  "lexical_name": "exists_numbers_in_interval",
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
  "slug": "exists-numbers-in-interval--ec270b850f90fe82dc0a2765",
  "source": {
    "blob": "c9022ba87ab388bf5f4af0bfa36279e75d6ca87b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec270b850f90fe82dc0a27658534b342df2ea21af827f7930d082da6f8d8d0e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:658e53e5-2941-ce2a-730a-6068075a727f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_numbers_in_interval {n : ℕ} (hn : 100 ≤ n) :
    ∃ l : ℕ, n + 4 * l ≤ 2 * l ^ 2 ∧ 2 * l ^ 2 + 4 * l ≤ 2 * n := by
  have hn' : 1 ≤ Nat.sqrt (n + 1) := by
    rw [Nat.le_sqrt]
    apply Nat.le_add_left
  have h₁ := Nat.sqrt_le' (n + 1)
  have h₂ := Nat.succ_le_succ_sqrt' (n + 1)
  have h₃ : 10 ≤ (n + 1).sqrt := by
    rw [Nat.le_sqrt]
    omega
  rw [← Nat.sub_add_cancel hn'] at h₁ h₂ h₃
  set l := (n + 1).sqrt - 1
  refine ⟨l, ?_, ?_⟩
  · calc n + 4 * l ≤ (l ^ 2 + 4 * l + 2) + 4 * l := by linarith only [h₂]
      _ ≤ 2 * l ^ 2 := by nlinarith only [h₃]
  · linarith only [h₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9022ba87ab388bf5f4af0bfa36279e75d6ca87b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
