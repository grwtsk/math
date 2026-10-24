# Subgroup.hasDetPlusMinusOne_adjoinNegOne_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c74a8f6c-78b8-ba3f-55ce-eb5336a90dc8",
  "kind": "lemma",
  "lexical_name": "Subgroup.hasDetPlusMinusOne_adjoinNegOne_iff",
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
  "slug": "subgroup-hasdetplusminusone-adjoinnegone-iff--762ca7ce17d65a6b0eab2b22",
  "source": {
    "blob": "3ad57a877256f4ef21aa996394fdd345a7b57e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 225,
    "path": "GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:762ca7ce17d65a6b0eab2b222f8f39c1e0c8e2b062c1f2f840aba19512d694a5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c74a8f6c-78b8-ba3f-55ce-eb5336a90dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma Subgroup.hasDetPlusMinusOne_adjoinNegOne_iff {𝒢 : Subgroup (GL n R)} :
    𝒢.adjoinNegOne.HasDetPlusMinusOne ↔ 𝒢.HasDetPlusMinusOne := by
  refine ⟨fun _ ↦ ⟨fun {g} hg ↦ HasDetPlusMinusOne.det_eq (𝒢.le_adjoinNegOne hg)⟩, fun _ ↦ ⟨?_⟩⟩
  rintro g (hg | hg)
  · exact HasDetPlusMinusOne.det_eq hg
  · by_cases hn : Even (Fintype.card n)
    · convert! HasDetPlusMinusOne.det_eq hg using 1 <;>
        simp [Units.ext_iff, det_neg, hn]
    · convert! (HasDetPlusMinusOne.det_eq hg).symm using 1 <;>
        simp [Units.ext_iff, det_neg, Nat.not_even_iff_odd.mp hn, neg_eq_iff_eq_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad57a877256f4ef21aa996394fdd345a7b57e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
