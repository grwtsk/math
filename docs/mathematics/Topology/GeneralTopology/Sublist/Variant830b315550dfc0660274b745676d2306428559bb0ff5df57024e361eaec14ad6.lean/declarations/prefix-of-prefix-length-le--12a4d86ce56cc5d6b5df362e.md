# prefix_of_prefix_length_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c2efbf5-c9b9-9048-830a-424335f7e36a",
  "kind": "theorem",
  "lexical_name": "prefix_of_prefix_length_le",
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
  "slug": "prefix-of-prefix-length-le--12a4d86ce56cc5d6b5df362e",
  "source": {
    "blob": "3048636ccb16906cf91c4310c0f9f85fcfc54623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 902,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a4d86ce56cc5d6b5df362e55d1935d3c6b5f3038942c6a3055782c2a444a63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c2efbf5-c9b9-9048-830a-424335f7e36a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 902–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefix_of_prefix_length_le :
    ∀ {l₁ l₂ l₃ : List α}, l₁ <+: l₃ → l₂ <+: l₃ → length l₁ ≤ length l₂ → l₁ <+: l₂
  | [], _, _, _, _, _ => nil_prefix
  | _ :: _, b :: _, _, ⟨_, rfl⟩, ⟨_, e⟩, ll => by
    injection e with _ e'; subst b
    rcases prefix_of_prefix_length_le ⟨_, rfl⟩ ⟨_, e'⟩ (le_of_succ_le_succ ll) with ⟨r₃, rfl⟩
    exact ⟨r₃, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean#L902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3048636ccb16906cf91c4310c0f9f85fcfc54623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
