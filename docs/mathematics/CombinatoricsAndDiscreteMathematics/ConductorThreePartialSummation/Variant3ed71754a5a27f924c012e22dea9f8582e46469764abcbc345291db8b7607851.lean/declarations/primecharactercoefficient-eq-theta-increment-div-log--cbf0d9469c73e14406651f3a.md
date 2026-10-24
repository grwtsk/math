# primeCharacterCoefficient_eq_theta_increment_div_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a8a8d625eff525d6585c85b29c7deca3ef045f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2a4b7c6-7451-8910-f85e-b9671d7bc6c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc1867c4-7c5d-42f8-ef36-f233db2f65f6",
  "kind": "theorem",
  "lexical_name": "primeCharacterCoefficient_eq_theta_increment_div_log",
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
  "slug": "primecharactercoefficient-eq-theta-increment-div-log--cbf0d9469c73e14406651f3a",
  "source": {
    "blob": "3a8a8d625eff525d6585c85b29c7deca3ef045f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf0d9469c73e14406651f3a48e42bd48c252d6ec2d12250d727d3372e528f32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc1867c4-7c5d-42f8-ef36-f233db2f65f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCharacterCoefficient_eq_theta_increment_div_log
    {n : ℕ} (hn : 2 ≤ n) :
    primeCharacterCoefficient n =
      (conductorThreeTheta n - conductorThreeTheta (n - 1)) /
        Real.log n := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hn
  rw [show 2 + k - 1 = 1 + k by omega]
  have hrec := conductorThreeTheta_succ (1 + k)
  have hlog : Real.log ((2 + k : ℕ) : ℝ) ≠ 0 := by
    exact ne_of_gt (Real.log_pos (by exact_mod_cast (show 1 < 2 + k by omega)))
  rw [show 1 + k + 1 = 2 + k by omega] at hrec
  have hlog' : Real.log (2 + (k : ℝ)) ≠ 0 := by
    simpa only [Nat.cast_add, Nat.cast_ofNat] using hlog
  have hlogArg : Real.log (1 + (k : ℝ) + 1) = Real.log (2 + k) := by
    congr 1
    ring
  norm_num [Nat.cast_add, Nat.cast_one] at hrec ⊢
  rw [hrec]
  rw [hlogArg]
  apply (eq_div_iff hlog').2
  ring

/-- Exact inverse Abel identity. The lower endpoint `2` is forced by the
first prime and avoids the singular value `log 1 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8a8d625eff525d6585c85b29c7deca3ef045f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
