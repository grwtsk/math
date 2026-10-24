# actual_strict_rectangle_source_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ca69541-f242-03c4-6a3b-7fea53c7622f",
  "kind": "theorem",
  "lexical_name": "actual_strict_rectangle_source_support",
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
  "slug": "actual-strict-rectangle-source-support--de04c3a1b2b95c12659884da",
  "source": {
    "blob": "16e4cbaedb851e707105c805753995ae7e39a9be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant98f4535e8f58b30b6964c7bea071d74eb3f73a84217ac64c5cc4c0d4e73892a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de04c3a1b2b95c12659884da042654f3ae72bbddd450db0a86c396e69417b327",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant98f4535e8f58b30b6964c7bea071d74eb3f73a84217ac64c5cc4c0d4e73892a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ca69541-f242-03c4-6a3b-7fea53c7622f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_strict_rectangle_source_support {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : t ∈ Icc (Real.log (vaughanCutoff A : ℝ))
      (Real.log (vaughanCutoff A : ℝ) + 1))
    (hu : u ∈ Icc ((vaughanCutoff A + 1 : ℕ) : ℝ)
      ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < sourceUpper A := by
  exact (actual_strict_real_rectangle hA ht hu).trans_le
    (Nat.floor_le (Real.exp_pos (2 * A)).le)

end
end FormalResearch.RiemannHypothesis.SourceActualStrictWindow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant98f4535e8f58b30b6964c7bea071d74eb3f73a84217ac64c5cc4c0d4e73892a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant98f4535e8f58b30b6964c7bea071d74eb3f73a84217ac64c5cc4c0d4e73892a9.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e4cbaedb851e707105c805753995ae7e39a9be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
