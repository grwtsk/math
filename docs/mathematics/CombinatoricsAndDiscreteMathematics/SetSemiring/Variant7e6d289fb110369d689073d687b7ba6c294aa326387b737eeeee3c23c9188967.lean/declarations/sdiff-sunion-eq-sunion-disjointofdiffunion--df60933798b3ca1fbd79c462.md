# sdiff_sUnion_eq_sUnion_disjointOfDiffUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d252af-a3af-37cd-7eca-5096ee5dc3f6",
  "kind": "lemma",
  "lexical_name": "sdiff_sUnion_eq_sUnion_disjointOfDiffUnion",
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
  "slug": "sdiff-sunion-eq-sunion-disjointofdiffunion--df60933798b3ca1fbd79c462",
  "source": {
    "blob": "87758fd08c290dced41812b80bd380c6e7b59b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 315,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df60933798b3ca1fbd79c462ca7f8cc3d389114bca676a9e5f3bae77aea46387",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d252af-a3af-37cd-7eca-5096ee5dc3f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sdiff_sUnion_eq_sUnion_disjointOfDiffUnion (hC : IsSetSemiring C) (hs : s ∈ C)
    (hI : ↑I ⊆ C) : s \ ⋃₀ I = ⋃₀ hC.disjointOfDiffUnion hs hI :=
  (Finpartition.sup_parts _).symm.trans (sup_id_eq_sSup _)

@[deprecated (since := "2026-06-03")]
alias diff_sUnion_eq_sUnion_disjointOfDiffUnion := sdiff_sUnion_eq_sUnion_disjointOfDiffUnion

/-- In a semiring of sets `C`, for all set `s ∈ C` and finite set of sets `I ⊆ C`, there is a
finite set of sets in `C` whose union is `s \ ⋃₀ I`.
See `IsSetSemiring.disjointOfDiffUnion` for a definition that gives such a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87758fd08c290dced41812b80bd380c6e7b59b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
