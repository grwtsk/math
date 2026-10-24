# strictAntiOn_insert_iff_of_forall_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec86b479-2c10-50f4-1d97-8cef26eab13d",
  "kind": "lemma",
  "lexical_name": "strictAntiOn_insert_iff_of_forall_ge",
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
  "slug": "strictantion-insert-iff-of-forall-ge--e8bd009b1058368f5ad24902",
  "source": {
    "blob": "0dec461c06ef12508966ffe0a67f13aae0ee5e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantcf8cfdaf19409e9eb996fa659c2d8fe76749b8e8e118a6e044ea006914a28300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8bd009b1058368f5ad249028356ccbe8dc30d1bfddcafe0b553578de6701134",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantcf8cfdaf19409e9eb996fa659c2d8fe76749b8e8e118a6e044ea006914a28300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec86b479-2c10-50f4-1d97-8cef26eab13d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictAntiOn_insert_iff_of_forall_ge {a : α} (ha : ∀ x ∈ s, a ≤ x) :
    StrictAntiOn f (insert a s) ↔ (∀ b ∈ s, a < b → f b < f a) ∧ StrictAntiOn f s := by
  rw [strictAntiOn_insert_iff]
  have : ∀ b ∈ s, b < a → f a < f b := by
    intro b hb hab
    cases (ha _ hb).not_gt hab
  tauto

end strictMono

namespace Function

open Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantcf8cfdaf19409e9eb996fa659c2d8fe76749b8e8e118a6e044ea006914a28300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantcf8cfdaf19409e9eb996fa659c2d8fe76749b8e8e118a6e044ea006914a28300.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dec461c06ef12508966ffe0a67f13aae0ee5e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
