# biUnion_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5010a0d9-233f-b7ac-e2d1-6f8ffad0add8",
  "kind": "theorem",
  "lexical_name": "biUnion_congr",
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
  "slug": "biunion-congr--d4586c9e401b2be570e164fc",
  "source": {
    "blob": "3265dc8b7b54a898d34d1e8a181c402e3663767c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4586c9e401b2be570e164fcb296d36c858e255cbca4aa464972dfc3fac9e8d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5010a0d9-233f-b7ac-e2d1-6f8ffad0add8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biUnion_congr (h : π₁ = π₂) (hi : ∀ J ∈ π₁, πi₁ J = πi₂ J) :
    π₁.biUnion πi₁ = π₂.biUnion πi₂ := by
  subst π₂
  ext J
  simp only [mem_biUnion]
  constructor <;> exact fun ⟨J', h₁, h₂⟩ => ⟨J', h₁, hi J' h₁ ▸ h₂⟩
#align box_integral.prepartition.bUnion_congr BoxIntegral.Prepartition.biUnion_congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3265dc8b7b54a898d34d1e8a181c402e3663767c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
