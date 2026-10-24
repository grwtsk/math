# actual_continuous_hankel_not_positive_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:181ba035-ec1a-9f9b-e252-db8371ca920a",
  "kind": "theorem",
  "lexical_name": "actual_continuous_hankel_not_positive_gram",
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
  "slug": "actual-continuous-hankel-not-positive-gram--24af0d153f9edc8a6dd4ae3c",
  "source": {
    "blob": "8fd7bb04b663cbc0473dc12e1fb7876244d30960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 719,
    "path": "GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24af0d153f9edc8a6dd4ae3c3756ba215e9cb7dd36e05f345b2c99f6bed944f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:181ba035-ec1a-9f9b-e252-db8371ca920a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_continuous_hankel_not_positive_gram {A : ℝ} (hA : 1 ≤ A)
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace ℝ E] :
    ¬ ∃ v : ℝ → E, ∀ x : ℝ, 1 < x → ∀ y : ℝ, 1 < y →
      inner ℝ (v x) (v y) = sourcePlainWeight A (x * y) := by
  rintro ⟨v, hv⟩
  obtain ⟨x, hx, hn⟩ := actual_continuous_hankel_diagonal_negative hA
  rw [← hv x hx x hx] at hn
  exact (not_lt_of_ge (real_inner_self_nonneg)) hn

end
end FormalResearch.RiemannHypothesis.SourceCutoffFlux
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd7bb04b663cbc0473dc12e1fb7876244d30960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
