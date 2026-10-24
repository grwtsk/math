# infix_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e619a7f6-5031-dd66-ce1d-5ea820be9d2d",
  "kind": "theorem",
  "lexical_name": "infix_append_iff",
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
  "slug": "infix-append-iff--7dfb38549987e317b8e310f8",
  "source": {
    "blob": "3048636ccb16906cf91c4310c0f9f85fcfc54623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1431,
    "line": 1410,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dfb38549987e317b8e310f876af615c05832859c0c1749365d48cf1b0a2ed63",
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

Occurrence: `result:e619a7f6-5031-dd66-ce1d-5ea820be9d2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1410–1431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infix_append_iff {α : Type u} {l xs ys : List α} : l <:+: xs ++ ys ↔
    l <:+: xs ∨ l <:+: ys ∨ (∃ l₁ l₂, l = l₁ ++ l₂ ∧ l₁ <:+ xs ∧ l₂ <+: ys) := by
  constructor
  · rintro ⟨s, t, ht⟩
    rcases List.append_eq_append_iff.mp ht with ⟨as, hxs, _⟩ | ⟨bs, hsl, hys⟩
    · exact Or.inl ⟨s, as, hxs.symm⟩
    · rcases List.append_eq_append_iff.mp hsl with ⟨cs, hxs', hl⟩ | ⟨ds, _, hbs⟩
      · exact Or.inr (Or.inr ⟨cs, bs, hl,
          List.suffix_iff_exists_eq_append.mpr ⟨s, hxs'⟩,
          List.prefix_iff_exists_eq_append.mpr ⟨t, hys⟩⟩)
      · exact Or.inr (Or.inl ⟨ds, t, by rw [hys, ← hbs]⟩)
  · rintro (⟨s, t, ht⟩ | ⟨s, t, ht⟩ | ⟨l₁, l₂, rfl, hl₁, hl₂⟩)
    · exact ⟨s, t ++ ys, by rw [← List.append_assoc, ht]⟩
    · exact ⟨xs ++ s, t, by
        rw [List.append_assoc] at ht
        rw [List.append_assoc (xs ++ s), List.append_assoc xs, ht]⟩
    · rw [List.suffix_iff_exists_eq_append] at hl₁
      rw [List.prefix_iff_exists_eq_append] at hl₂
      obtain ⟨s, hxs⟩ := hl₁
      obtain ⟨t, hys⟩ := hl₂
      exact ⟨s, t, by rw [← List.append_assoc s l₁, List.append_assoc (s ++ l₁), hxs, hys]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean#L1410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3048636ccb16906cf91c4310c0f9f85fcfc54623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
