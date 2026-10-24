# coverEntropyEntourage_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22d5296c-5ffe-6e75-5621-ba79828868a8",
  "kind": "lemma",
  "lexical_name": "coverEntropyEntourage_union",
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
  "slug": "coverentropyentourage-union--224b8180a41670054a36eb4d",
  "source": {
    "blob": "74b9129e22dbfdf61d149520e0deff1a445fd393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:224b8180a41670054a36eb4df43b086d98e6a53ee0916a7562fa924b4fb8a4b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22d5296c-5ffe-6e75-5621-ba79828868a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropyEntourage_union {T : X → X} {F G : Set X} {U : Set (X × X)} :
    coverEntropyEntourage T (F ∪ G) U
      = max (coverEntropyEntourage T F U) (coverEntropyEntourage T G U) := by
  refine le_antisymm ?_ ?_
  · apply le_of_le_of_eq (expGrowthSup_monotone fun n ↦ ?_) expGrowthSup_add
    rw [Pi.add_apply, ← ENat.toENNReal_add]
    exact ENat.toENNReal_mono (coverMincard_union_le T F G U n)
  · exact max_le (coverEntropyEntourage_monotone T U subset_union_left)
      (coverEntropyEntourage_monotone T U subset_union_right)

variable {ι : Type*} [UniformSpace X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b9129e22dbfdf61d149520e0deff1a445fd393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
