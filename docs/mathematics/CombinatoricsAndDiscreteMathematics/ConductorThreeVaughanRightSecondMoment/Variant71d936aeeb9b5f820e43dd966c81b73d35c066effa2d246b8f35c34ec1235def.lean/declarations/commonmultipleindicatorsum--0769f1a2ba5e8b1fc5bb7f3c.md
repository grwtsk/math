# commonMultipleIndicatorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54c81c5-7b15-1c0c-592d-5f5b050418ad",
  "kind": "theorem",
  "lexical_name": "commonMultipleIndicatorSum",
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
  "slug": "commonmultipleindicatorsum--0769f1a2ba5e8b1fc5bb7f3c",
  "source": {
    "blob": "bb704e4cb8d452dcc02a556cf3768cebaa1b10eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0769f1a2ba5e8b1fc5bb7f3c6b0976d216f92c4d313a6d1ef681e90659cc17a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54c81c5-7b15-1c0c-592d-5f5b050418ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem commonMultipleIndicatorSum (X d e : ℕ) :
    (∑ k ∈ Finset.Ioc 0 X,
      (if d ∣ k then (1 : ℝ) else 0) *
        (if e ∣ k then (1 : ℝ) else 0)) =
      (X / Nat.lcm d e : ℕ) := by
  have hfilter : (Finset.Ioc 0 X).filter
      (fun k ↦ d ∣ k ∧ e ∣ k) =
      (Finset.Ioc 0 X).filter (fun k ↦ Nat.lcm d e ∣ k) := by
    ext k
    simp [Nat.lcm_dvd_iff]
  calc
    (∑ k ∈ Finset.Ioc 0 X,
        (if d ∣ k then (1 : ℝ) else 0) *
          (if e ∣ k then (1 : ℝ) else 0)) =
        ((Finset.Ioc 0 X).filter
          (fun k ↦ d ∣ k ∧ e ∣ k)).card := by
      rw [← Finset.sum_boole]
      apply Finset.sum_congr rfl
      intro k hk
      by_cases hd : d ∣ k <;> by_cases he : e ∣ k <;> simp [hd, he]
    _ = ((Finset.Ioc 0 X).filter
          (fun k ↦ Nat.lcm d e ∣ k)).card := by rw [hfilter]
    _ = (X / Nat.lcm d e : ℕ) := by
      rw [Nat.Ioc_filter_dvd_card_eq_div]

/-- Exact finite second-moment identity for the active divisor-count
majorant. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb704e4cb8d452dcc02a556cf3768cebaa1b10eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
