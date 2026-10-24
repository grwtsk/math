# no_eventual_smaller_rate_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b454c5a-ed26-08ff-916c-d8dc004fefbb",
  "kind": "theorem",
  "lexical_name": "no_eventual_smaller_rate_cap",
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
  "slug": "no-eventual-smaller-rate-cap--0c4c0c9b90f52659ac0928f3",
  "source": {
    "blob": "71b14b5637c0859afa0d4ef5f30e21fd4f6a2184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4c0c9b90f52659ac0928f3d5c07df6d02872bf491abe78e8d4dfe40729e47e",
  "verification": {
    "reference": "docs/verification/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b454c5a-ed26-08ff-916c-d8dc004fefbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_eventual_smaller_rate_cap {z : ℂ} (hz : z ≠ 0) (k : ℕ) {beta C : ℝ}
    (hgap : beta < z.re) :
    ¬ ∀ᶠ t : ℝ in atTop, ‖primitive z k (t : ℂ)‖ ≤ C * Real.exp (beta * t) := by
  intro hcap
  have hlarge := (faster_exponential_comparison hz k hgap).eventually (eventually_gt_atTop C)
  have hfalse : ∀ᶠ t : ℝ in atTop, False := by
    filter_upwards [hcap, hlarge] with t hc hl
    exact (not_lt_of_ge hc) ((lt_div_iff₀ (Real.exp_pos _)).mp hl)
  rcases hfalse.exists with ⟨t, ht⟩
  exact ht

end
end GRWTSK.RiemannHypothesis.Conversation.FixedModePrimitives
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b14b5637c0859afa0d4ef5f30e21fd4f6a2184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
