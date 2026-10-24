# exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ce6bb5f-70d6-59f4-f257-43fbe9646d89",
  "kind": "theorem",
  "lexical_name": "exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_monotoneOn",
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
  "slug": "exists-le-const-mul-norm-intervalintegral-of-nonneg-of-monotoneon--2a9bedf3c9dbf93a68f70bcb",
  "source": {
    "blob": "29c357cf0e2b1d9bde45be61d96d6a760bf04d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 243,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a9bedf3c9dbf93a68f70bcb66763df36fcd362bab3aa5cde0892e261e4b3f7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ce6bb5f-70d6-59f4-f257-43fbe9646d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_monotoneOn
    (hab : a ≤ b) (hf : 0 ≤ f a) (hf_mon : MonotoneOn f (Icc a b))
    (hg : IntervalIntegrable g volume a b) :
    ∃ ξ ∈ Icc a b, ‖∫ x in a..b, f x • g x‖ ≤ f b * ‖∫ x in ξ..b, g x‖ := by
  obtain ⟨ξ, hξ_mem, hξ⟩ := exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn
    (f := fun x ↦ f (-x)) (g := fun x ↦ g (-x)) (by simpa) (by simpa)
    (by intro x hx y hy hxy; apply hf_mon <;> grind)
    <| (IntervalIntegrable.iff_comp_neg).mp hg.symm
  rw [← intervalIntegral.integral_comp_neg] at hξ
  exact ⟨-ξ, by grind, by simpa using hξ⟩

end Second
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c357cf0e2b1d9bde45be61d96d6a760bf04d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
