# classical_source_window_payment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:253bd14a-b056-b3f0-2f3e-70c2c76a72fe",
  "kind": "theorem",
  "lexical_name": "classical_source_window_payment_integrable",
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
  "slug": "classical-source-window-payment-integrable--95521fabb9313e3db4836c7e",
  "source": {
    "blob": "1f09ccc6c5fc8778bc5450968683d2b5b9bdbfeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 51,
    "path": "GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95521fabb9313e3db4836c7efb3b9ddae771995c201d521574fe3d581cbe0d48",
  "verification": {
    "reference": "docs/verification/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253bd14a-b056-b3f0-2f3e-70c2c76a72fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classical_source_window_payment_integrable {c A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun x ↦ envelope c x / Real.sqrt x) volume
      (A ^ 2) (Real.exp (2 * A)) := by
  have hA0 : 0 < A := by linarith
  apply ContinuousOn.intervalIntegrable
  apply ContinuousOn.div
  · unfold envelope
    apply Real.continuous_exp.comp_continuousOn
    apply continuousOn_const.mul
    apply Real.continuous_sqrt.comp_continuousOn
    apply Real.continuousOn_log.mono
    intro x hx
    have hx0 : 0 < x := by
      rcases mem_uIcc.mp hx with hx | hx
      · exact (sq_pos_of_pos hA0).trans_le hx.1
      · exact (Real.exp_pos _).trans_le hx.1
    exact hx0.ne'
  · exact Real.continuous_sqrt.continuousOn
  · intro x hx
    apply (Real.sqrt_pos.mpr ?_).ne'
    rcases mem_uIcc.mp hx with hx | hx
    · exact (sq_pos_of_pos hA0).trans_le hx.1
    · exact (Real.exp_pos _).trans_le hx.1

end
end GRWTSK.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeDominance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f09ccc6c5fc8778bc5450968683d2b5b9bdbfeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
