# isExtrOn_dual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df9963d8-6222-bd9b-4ae4-6f4035d4d138",
  "kind": "theorem",
  "lexical_name": "isExtrOn_dual_iff",
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
  "slug": "isextron-dual-iff--a7bdf58456272f478ab83ff4",
  "source": {
    "blob": "446db5e629fbf0fbf1ce1b0e215406c049843101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7bdf58456272f478ab83ff46fc384e24584dc15c1166af13dd6eda006d47990",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df9963d8-6222-bd9b-4ae4-6f4035d4d138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isExtrOn_dual_iff : IsExtrOn (toDual ∘ f) s a ↔ IsExtrOn f s a :=
  or_comm
#align is_extr_on_dual_iff isExtrOn_dual_iff

alias ⟨IsMinOn.undual, IsMaxOn.dual⟩ := isMinOn_dual_iff
#align is_min_on.undual IsMinOn.undual
#align is_max_on.dual IsMaxOn.dual

alias ⟨IsMaxOn.undual, IsMinOn.dual⟩ := isMaxOn_dual_iff
#align is_max_on.undual IsMaxOn.undual
#align is_min_on.dual IsMinOn.dual

alias ⟨IsExtrOn.undual, IsExtrOn.dual⟩ := isExtrOn_dual_iff
#align is_extr_on.undual IsExtrOn.undual
#align is_extr_on.dual IsExtrOn.dual

/-! ### Operations on the filter/set -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `446db5e629fbf0fbf1ce1b0e215406c049843101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
