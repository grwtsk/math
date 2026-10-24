# actual_multiple_eq_plain_sample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79c113cf79a81b620045cdb747eb75627a2f122c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c26c8cf7-c5c8-f6e7-fc92-ba50c43dd271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af6a374f-eebe-59d3-1857-d2ee38fe690e",
  "kind": "theorem",
  "lexical_name": "actual_multiple_eq_plain_sample",
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
  "slug": "actual-multiple-eq-plain-sample--5f218c99d73fa7982536708b",
  "source": {
    "blob": "79c113cf79a81b620045cdb747eb75627a2f122c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f218c99d73fa7982536708b672c0a99f1c629d6ddf208922ae4db170feb1f79",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af6a374f-eebe-59d3-1857-d2ee38fe690e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_multiple_eq_plain_sample
    (A : ℝ) {m d j : ℕ} (hm : 0 < m) (hd : 0 < d) (hj : 0 < j) :
    sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) =
      plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
  have hk : 0 < ((d * m : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hd hm
  have hjr : 0 < (j : ℝ) := by exact_mod_cast hj
  rw [plainProfile_eq_of_pos A _ hjr, sourcePlainSamplingTerm_eq_source_weight A hk hjr]
  simp only [Nat.cast_mul]
  congr 1
  ring

/-- The full actual multiplied sample retains its independent main term and exact A^-2 error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c113cf79a81b620045cdb747eb75627a2f122c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
