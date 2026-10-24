# inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02cd4e79-337b-b1c2-9b17-731a1c584a9d",
  "kind": "theorem",
  "lexical_name": "inter",
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
  "slug": "inter--b29eaa1f6c8b91c3d04cd7fd",
  "source": {
    "blob": "0f9920d47ff4baab691ee798a26c504de4cbf8d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29eaa1f6c8b91c3d04cd7fdcc9ef383e3972e5378c7c878d5bbe81e72e56c6d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02cd4e79-337b-b1c2-9b17-731a1c584a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem inter [ContinuousAdd 𝕜] {A B C : Set E} (hB : IsExposed 𝕜 A B)
    (hC : IsExposed 𝕜 A C) : IsExposed 𝕜 A (B ∩ C) := by
  rintro ⟨w, hwB, hwC⟩
  obtain ⟨l₁, rfl⟩ := hB ⟨w, hwB⟩
  obtain ⟨l₂, rfl⟩ := hC ⟨w, hwC⟩
  refine' ⟨l₁ + l₂, Subset.antisymm _ _⟩
  · rintro x ⟨⟨hxA, hxB⟩, ⟨-, hxC⟩⟩
    exact ⟨hxA, fun z hz => add_le_add (hxB z hz) (hxC z hz)⟩
  rintro x ⟨hxA, hx⟩
  refine' ⟨⟨hxA, fun y hy => _⟩, hxA, fun y hy => _⟩
  · exact
      (add_le_add_iff_right (l₂ x)).1 ((add_le_add (hwB.2 y hy) (hwC.2 x hxA)).trans (hx w hwB.1))
  · exact
      (add_le_add_iff_left (l₁ x)).1 (le_trans (add_le_add (hwB.2 x hxA) (hwC.2 y hy)) (hx w hwB.1))
#align is_exposed.inter IsExposed.inter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9920d47ff4baab691ee798a26c504de4cbf8d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
