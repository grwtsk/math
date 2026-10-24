# positivePoleSlope_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4d2df79e0436a69c878e7d0f93832486d2404e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc422bbee8b8200474e4ae81623b72f9f54e58df2cc1b7a4c7766d0adc8f2151.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b1ba09-5828-7c9d-c788-033cab065d90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3e79fc2-a708-cf94-c135-c1e85791b31a",
  "kind": "theorem",
  "lexical_name": "positivePoleSlope_pos",
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
  "slug": "positivepoleslope-pos--53e671850e7b1986530de9d1",
  "source": {
    "blob": "c4d2df79e0436a69c878e7d0f93832486d2404e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferAudit/Variantcc422bbee8b8200474e4ae81623b72f9f54e58df2cc1b7a4c7766d0adc8f2151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53e671850e7b1986530de9d1f3905140223449829711e79de1beeeb7ecbf9b8f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferAudit/Variantcc422bbee8b8200474e4ae81623b72f9f54e58df2cc1b7a4c7766d0adc8f2151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e79fc2-a708-cf94-c135-c1e85791b31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePoleSlope_pos : 0 < positivePoleSlope := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1) 11
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (2721 : ℝ) < 1001 * Real.exp 1 := by linarith
  have hp : 0 < Real.exp (-1 / 2 : ℝ) := Real.exp_pos _
  have hexp : Real.exp (1 / 2 : ℝ) = Real.exp 1 * Real.exp (-1 / 2) := by
    rw [← Real.exp_add]
    norm_num
  have hd : 0 < 1001 * Real.exp (1 / 2 : ℝ) - 2721 * Real.exp (-1 / 2) := by
    rw [hexp]
    nlinarith [mul_pos (sub_pos.mpr he') hp]
  unfold positivePoleSlope
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferAudit/Variantcc422bbee8b8200474e4ae81623b72f9f54e58df2cc1b7a4c7766d0adc8f2151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferAudit/Variantcc422bbee8b8200474e4ae81623b72f9f54e58df2cc1b7a4c7766d0adc8f2151.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d2df79e0436a69c878e7d0f93832486d2404e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
