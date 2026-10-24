# jensen_count_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccf41c95bae66453b7ff3bfda4d598f9359b158e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2ab5f0c-2f8b-b47d-6a9c-7653c7e9f0fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d67878f5-9a7b-25b5-00fe-c60801d49f0c",
  "kind": "theorem",
  "lexical_name": "jensen_count_bound",
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
  "slug": "jensen-count-bound--d706fb7e281f7ecab9d77fa6",
  "source": {
    "blob": "ccf41c95bae66453b7ff3bfda4d598f9359b158e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d706fb7e281f7ecab9d77fa60a1a2377bd477edd58cde0e4974a4c0e50a8ddb2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67878f5-9a7b-25b5-00fe-c60801d49f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensen_count_bound {r M : ℝ} (hr : 0 < r) (hM : 1 ≤ M)
    (bound : ∀ z ∈ sphere (0 : ℂ) (2 * r), ‖poleCleared z‖ ≤ M) :
    ((∑ᶠ z, divisor poleCleared (closedBall 0 |r|) z : ℤ) : ℝ) ≤
      Real.log M / Real.log 2 := by
  have hr2 : 0 < (2 : ℝ) * r := by positivity
  have analytic : AnalyticOnNhd ℂ poleCleared (closedBall 0 |2 * r|) :=
    fun z _ => poleCleared_entire.analyticAt z
  have h := AnalyticOnNhd.sum_divisor_le (c := (0 : ℂ)) (r := r) (R := 2 * r)
    (M := M) (f := poleCleared) (by simpa only [abs_of_pos hr])
    (by rw [abs_of_pos hr, abs_of_pos hr2]; linarith)
    hM analytic (by simp [poleCleared_zero])
    (by simpa only [abs_of_pos hr2] using bound)
  simpa only [poleCleared_zero, norm_one, div_one,
    mul_div_cancel_right₀ (2 : ℝ) hr.ne'] using h

/-- Jensen and exact multiplicity transport reduce the original count to one growth input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf41c95bae66453b7ff3bfda4d598f9359b158e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
