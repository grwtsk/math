# globalMinimizeCore_lo_le_hi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99dd2a15-07af-255d-172c-b495ef4a46ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa27b3b1-d5d5-9fbf-e14d-06a0bb5030fc",
  "kind": "theorem",
  "lexical_name": "globalMinimizeCore_lo_le_hi",
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
  "slug": "globalminimizecore-lo-le-hi--d005a3af9c50a2d187e19457",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1179,
    "line": 1162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d005a3af9c50a2d187e194575af5626519cc7eb0aaa438bea5895ac81f4089c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa27b3b1-d5d5-9fbf-e14d-06a0bb5030fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1162–1179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalMinimizeCore_lo_le_hi (e : Expr) (hsupp : ExprSupportedCore e)
    (B : Box) (cfg : GlobalOptConfig)
    (hdom : ∀ (B' : Box), B'.length = B.length → evalDomainValid e B'.toEnv { taylorDepth := cfg.taylorDepth }) :
    (globalMinimizeCore e B cfg).bound.lo ≤ (globalMinimizeCore e B cfg).bound.hi := by
  -- Get the witness that achieves ≤ hi
  obtain ⟨ρ, hρ, hzero, hhi⟩ := globalMinimizeCore_hi_achievable e hsupp B cfg hdom
  -- Get that lo ≤ f(ρ) for this witness
  have hlo := globalMinimizeCore_lo_correct e hsupp B cfg hdom ρ hρ hzero
  -- Combine: lo ≤ f(ρ) ≤ hi, then cast back to ℚ
  have h : ((globalMinimizeCore e B cfg).bound.lo : ℝ) ≤ (globalMinimizeCore e B cfg).bound.hi :=
    calc ((globalMinimizeCore e B cfg).bound.lo : ℝ)
      ≤ Expr.eval ρ e := hlo
      _ ≤ (globalMinimizeCore e B cfg).bound.hi := hhi
  exact_mod_cast h

/-! ### Maximization correctness theorems -/

/-- The upper bound from globalMaximizeCore is correct: f(ρ) ≤ hi for all ρ in B. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L1162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
