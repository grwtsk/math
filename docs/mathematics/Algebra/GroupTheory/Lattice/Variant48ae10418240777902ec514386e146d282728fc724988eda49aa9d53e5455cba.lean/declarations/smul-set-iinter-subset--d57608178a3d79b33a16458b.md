# smul_set_iInter₂_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:093e53b4-8ad1-be03-748e-b52acdce27a9",
  "kind": "lemma",
  "lexical_name": "smul_set_iInter₂_subset",
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
  "slug": "smul-set-iinter-subset--d57608178a3d79b33a16458b",
  "source": {
    "blob": "0d04a1ded8be9f5fbb6aaad209db0c1ea968efe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 294,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57608178a3d79b33a16458ba518e34983916c089b8db1e7cdf330005c13c3e5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:093e53b4-8ad1-be03-748e-b52acdce27a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_set_iInter₂_subset (a : α) (t : ∀ i, κ i → Set β) :
    a • ⋂ i, ⋂ j, t i j ⊆ ⋂ i, ⋂ j, a • t i j := image_iInter₂_subset ..

end SMulSet
variable {s : Set α} {t : Set β} {a : α} {b : β}

section VSub
variable {ι : Sort*} {κ : ι → Sort*} [VSub α β] {s s₁ s₂ t t₁ t₂ : Set β} {u : Set α} {a : α}
  {b c : β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d04a1ded8be9f5fbb6aaad209db0c1ea968efe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
