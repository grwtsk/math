# actual_remainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2bcda8d-3098-45ae-ea64-56d07f49f382",
  "kind": "theorem",
  "lexical_name": "actual_remainder_integrable",
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
  "slug": "actual-remainder-integrable--93c7ee9c2bc6109afeb257f7",
  "source": {
    "blob": "02adb31a743398cc879e5b8f446bff8a782bfd86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant857d5a8c97c02260e0c45699b58e2364f98f19b08c1e1c061808610290c6e5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93c7ee9c2bc6109afeb257f707df9388ab4642a3a6d3171c64549864d73a2189",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant857d5a8c97c02260e0c45699b58e2364f98f19b08c1e1c061808610290c6e5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2bcda8d-3098-45ae-ea64-56d07f49f382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_remainder_integrable {C : ℝ} (hC : RawMangoldtDecay C) :
    IntegrableOn actualRemainder (Ioi (0:ℝ)) := by
  have h := actual_remainder_integrable_near_origin.union
    (actual_remainder_integrable_tail hC)
  have hs : Ioc (0:ℝ) 1 ∪ Ioi 1 = Ioi 0 := by
    ext t
    simp only [mem_union,mem_Ioc,mem_Ioi]
    constructor
    · rintro (h|h)
      · exact h.1
      · linarith
    · intro ht
      by_cases h : t ≤ 1
      · exact Or.inl ⟨ht,h⟩
      · exact Or.inr (lt_of_not_ge h)
  simpa only [hs] using h

/-- Preserve the independently defined proper-power second moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant857d5a8c97c02260e0c45699b58e2364f98f19b08c1e1c061808610290c6e5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant857d5a8c97c02260e0c45699b58e2364f98f19b08c1e1c061808610290c6e5ec.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02adb31a743398cc879e5b8f446bff8a782bfd86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
