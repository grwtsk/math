# feedback_transport_ratio_le_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d346a1b3-a912-57d9-4a36-0d61ca8102d0",
  "kind": "theorem",
  "lexical_name": "feedback_transport_ratio_le_half",
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
  "slug": "feedback-transport-ratio-le-half--ddfa4a34d007f9d4e4bfbcba",
  "source": {
    "blob": "d078417c858db8e26bfd9614a3c83b4acba871f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Analysis/Asymptotics/FiniteConvolutionRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddfa4a34d007f9d4e4bfbcba9622c5799b03d83bf6c0c08edc1d4ab22103d392",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d346a1b3-a912-57d9-4a36-0d61ca8102d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feedback_transport_ratio_le_half {B ρ L : ℝ} (hB : 0 ≤ B)
    (hρ : 0 < ρ) (hLB : 2 * (B + 1) / ρ ≤ L) :
    1 < ρ * L ∧ 2 * B / (ρ * L - 1) ≤ 1 := by
  have Hp := (div_le_iff₀ hρ).mp hLB
  have Hprod : 1 < ρ * L := by nlinarith
  refine ⟨Hprod, ?_⟩
  apply (div_le_iff₀ (sub_pos.mpr Hprod)).2
  nlinarith

/-- The complete MB16--MB17 factorial recurrence has the claimed geometric gain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/FiniteConvolutionRecurrence.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d078417c858db8e26bfd9614a3c83b4acba871f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
