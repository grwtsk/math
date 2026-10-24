# exists_numbers_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5624bd20-896f-c02e-3f7c-29a93a9daa91",
  "kind": "theorem",
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
  "slug": "exists-numbers-in-interval--ffaa7a74baecac3d4de000d1",
  "source": {
    "blob": "8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffaa7a74baecac3d4de000d15454efad950cc1186fbfc46f4f3bf28c1beb4532",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5624bd20-896f-c02e-3f7c-29a93a9daa91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_numbers_in_interval (n : ℕ) (hn : 100 ≤ n) :
    ∃ l : ℕ, n + 4 * l ≤ 2 * l ^ 2 ∧ 2 * l ^ 2 + 4 * l ≤ 2 * n := by
  have hn' : 1 ≤ Nat.sqrt (n + 1)
  · rw [Nat.le_sqrt]
    linarith
  have h₁ := Nat.sqrt_le' (n + 1)
  have h₂ := Nat.succ_le_succ_sqrt' (n + 1)
  have h₃ : 10 ≤ (n + 1).sqrt
  · rw [Nat.le_sqrt]
    linarith only [hn]
  rw [← Nat.sub_add_cancel hn'] at h₁ h₂ h₃
  set l := (n + 1).sqrt - 1
  refine ⟨l, ?_, ?_⟩
  · calc n + 4 * l ≤ (l ^ 2 + 4 * l + 2) + 4 * l := by linarith only [h₂]
      _ ≤ 2 * l ^ 2 := by nlinarith only [h₃]
  · linarith only [h₁]
#align imo2021_q1.exists_numbers_in_interval Imo2021Q1.exists_numbers_in_interval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
