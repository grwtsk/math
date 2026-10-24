# pickupKernel_right_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/NumberTheory/Zeta/ReciprocalDecayBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6df75ec-33ab-7228-acf8-8be3ae09a134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Zeta/ReciprocalDecayBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b168723d-3c97-b401-da5a-6569216ee1d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d741e566-10cf-ebb2-8dcb-ea2f80b9a795",
  "kind": "theorem",
  "lexical_name": "pickupKernel_right_tail",
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
  "slug": "pickupkernel-right-tail--b45c5fe9fd4422bd68f9763b",
  "source": {
    "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b45c5fe9fd4422bd68f9763b8325c8100b83643931e7d00823cde17274fab593",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d741e566-10cf-ebb2-8dcb-ea2f80b9a795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupKernel_right_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    IntegrableOn (pickupKernel c) (Ioi H) ∧
      ‖∫ t : ℝ in Ioi H, pickupKernel c t‖ ≤
        absoluteDirichletBudget c*H^(-1:ℝ) := by
  have hm := EulerP04RH.right_tail_bound (F := pickupKernel c)
    (A := absoluteDirichletBudget c) (m := 2) (by norm_num) (by linarith : 0 < H)
    (pickupKernel_continuous hc).aestronglyMeasurable
    (by
      intro t ht
      have htpos : 0 < t := lt_of_lt_of_le (by linarith : 0 < H) ht.le
      have hdec := pickupKernel_norm_decay hc
        (show 1 ≤ |t| by rw [abs_of_pos htpos]; exact hH.trans ht.le)
      simpa only [abs_of_pos htpos] using hdec)
  norm_num at hm
  exact hm

end EulerP04RH.RightLine
#print axioms EulerP04RH.RightLine.reciprocal_zeta_uniform_bound
#print axioms EulerP04RH.RightLine.pickupKernel_norm_decay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `774e40eaeffa54c84e5eb25e6abe1889da780eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
