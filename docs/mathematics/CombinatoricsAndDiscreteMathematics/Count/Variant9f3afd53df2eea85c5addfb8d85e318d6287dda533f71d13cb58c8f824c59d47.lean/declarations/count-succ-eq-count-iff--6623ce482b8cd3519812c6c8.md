# count_succ_eq_count_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36f0697b-cac2-78dc-14f6-97f69aebd040",
  "kind": "theorem",
  "lexical_name": "count_succ_eq_count_iff",
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
  "slug": "count-succ-eq-count-iff--6623ce482b8cd3519812c6c8",
  "source": {
    "blob": "355439b4d498b976d7772fff78d0ba18a1ca09bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6623ce482b8cd3519812c6c8114b72662affdaef7cf0b13e3a8b17068772839c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f0697b-cac2-78dc-14f6-97f69aebd040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_succ_eq_count_iff {n : ℕ} : count p (n + 1) = count p n ↔ ¬p n := by
  by_cases h : p n <;> simp [h, count_succ]

alias ⟨_, count_succ_eq_succ_count⟩ := count_succ_eq_succ_count_iff

alias ⟨_, count_succ_eq_count⟩ := count_succ_eq_count_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355439b4d498b976d7772fff78d0ba18a1ca09bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
