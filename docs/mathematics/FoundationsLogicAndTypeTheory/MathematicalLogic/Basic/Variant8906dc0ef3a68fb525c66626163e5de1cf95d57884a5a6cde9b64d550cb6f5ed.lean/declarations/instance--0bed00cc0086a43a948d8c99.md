# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb238a147eff75ea05541ccd7d529bf301c89abd94e26a5fb4b940c1b6ea293c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0bed00cc0086a43a948d8c99",
  "source": {
    "blob": "b496921362123a127f10ba3de7ae3fbf9e5290b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 573,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bed00cc0086a43a948d8c995aecb50016d34aff097f48edf0d43cb1f039d899",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb238a147eff75ea05541ccd7d529bf301c89abd94e26a5fb4b940c1b6ea293c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [h : IsGCDMonoid α] : DecompositionMonoid α where
  primal k m n H := by
    cases h
    by_cases h0 : gcd k m = 0
    · rw [gcd_eq_zero_iff] at h0
      rcases h0 with ⟨rfl, rfl⟩
      exact ⟨0, n, dvd_refl 0, dvd_refl n, by simp⟩
    · obtain ⟨a, ha⟩ := gcd_dvd_left k m
      refine ⟨gcd k m, a, gcd_dvd_right _ _, ?_, ha⟩
      rw [← mul_dvd_mul_iff_left h0, ← ha]
      exact dvd_gcd_mul_of_dvd_mul H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b496921362123a127f10ba3de7ae3fbf9e5290b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
