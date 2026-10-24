# completed_zero_even_re_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c817803-6f74-4f67-2ad4-4d34551ebbc3",
  "kind": "lemma",
  "lexical_name": "completed_zero_even_re_bound",
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
  "slug": "completed-zero-even-re-bound--72d5a3859aeec2e1b99965b0",
  "source": {
    "blob": "ba8c3dfda69e3868c7524c1454b08b76cd8ead33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d5a3859aeec2e1b99965b0da41b27603f66ad3ba67de33da0f734c390a7fe8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c817803-6f74-4f67-2ad4-4d34551ebbc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completed_zero_even_re_bound : ∃ C : ℝ, 0 < C ∧ ∀ m : ℕ, 2 ≤ m →
    (completedRiemannZeta₀ (2 * (m : ℂ))).re ≤ C * Real.exp ((m : ℝ)^2) := by
  refine ⟨zetaMajorant + 2, by linarith [zetaMajorant_nonneg], ?_⟩
  intro m hm
  exact (Complex.re_le_norm _).trans (norm_completed_zero_even_le m hm)

#print axioms norm_completed_zero_even_le
#print axioms completed_zero_even_re_bound
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellEndpoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8c3dfda69e3868c7524c1454b08b76cd8ead33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
