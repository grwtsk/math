# infix_append_iff_ne_nil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90c36910-8cc2-6893-94aa-97a77cacdf70",
  "kind": "theorem",
  "lexical_name": "infix_append_iff_ne_nil",
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
  "slug": "infix-append-iff-ne-nil--d150f9a80917b7cab59f2dcf",
  "source": {
    "blob": "3048636ccb16906cf91c4310c0f9f85fcfc54623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1457,
    "line": 1432,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d150f9a80917b7cab59f2dcf725be57af19603f4d1a4650396acbd9e501ea211",
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

Occurrence: `result:90c36910-8cc2-6893-94aa-97a77cacdf70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1432–1457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infix_append_iff_ne_nil {α : Type u} {l xs ys : List α} : l <:+: xs ++ ys ↔
    l <:+: xs ∨ l <:+: ys ∨ (∃ l₁ l₂, l₁ ≠ [] ∧ l₂ ≠ [] ∧ l = l₁ ++ l₂ ∧ l₁ <:+ xs ∧ l₂ <+: ys) := by
  rw [List.infix_append_iff]
  constructor
  · rintro (h | h | ⟨l₁, l₂, hl, hl₁, hl₂⟩)
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · cases l₁ with
      | nil =>
        simp only [List.nil_append] at hl
        subst hl
        exact Or.inr (Or.inl hl₂.isInfix)
      | cons hd tl =>
        cases l₂ with
        | nil =>
          simp only [List.append_nil] at hl
          subst hl
          exact Or.inl hl₁.isInfix
        | cons hd' tl' =>
          exact Or.inr (Or.inr ⟨_, _, List.cons_ne_nil _ _, List.cons_ne_nil _ _, hl, hl₁, hl₂⟩)
  · rintro (h | h | ⟨l₁, l₂, -, -, hl, hl₁, hl₂⟩)
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr ⟨l₁, l₂, hl, hl₁, hl₂⟩)

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean#L1432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3048636ccb16906cf91c4310c0f9f85fcfc54623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
