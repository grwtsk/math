# subst_abc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cf64e4d-57a6-5606-f130-9a256459f540",
  "kind": "theorem",
  "lexical_name": "subst_abc",
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
  "slug": "subst-abc--096c9fbb69ff0bc1b1ebc369",
  "source": {
    "blob": "cde32a220a6e823b3e190dc9aa076b4dabc4d649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096c9fbb69ff0bc1b1ebc36966fd719192b1e9e5ed1052c315c13d8134d0b6bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cf64e4d-57a6-5606-f130-9a256459f540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subst_abc {x y z : ℝ} (h : x * y * z = 1) :
    ∃ a b c : ℝ, a ≠ 0 ∧ b ≠ 0 ∧ c ≠ 0 ∧ x = a / b ∧ y = b / c ∧ z = c / a := by
  use x, 1, 1 / y
  obtain ⟨⟨hx, hy⟩, _⟩ : (x ≠ 0 ∧ y ≠ 0) ∧ z ≠ 0 := by
    have := h.symm ▸ one_ne_zero
    simpa [not_or] using this
  have : z * (y * x) = 1 := by rw [← h]; ac_rfl
  field_simp [*]
#align imo2008_q2.subst_abc Imo2008Q2.subst_abc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cde32a220a6e823b3e190dc9aa076b4dabc4d649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
