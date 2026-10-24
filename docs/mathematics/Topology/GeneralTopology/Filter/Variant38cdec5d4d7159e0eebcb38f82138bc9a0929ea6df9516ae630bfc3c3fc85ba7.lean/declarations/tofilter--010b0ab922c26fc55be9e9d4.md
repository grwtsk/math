# toFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcd6855676bf7f8b47eb31c4b711947ef7526105ac0d88b9d69cef26f176ee27",
  "kind": "def",
  "lexical_name": "toFilter",
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
  "slug": "tofilter--010b0ab922c26fc55be9e9d4",
  "source": {
    "blob": "ba1ceba3ff92b50bffd924ab11b9b796c73c9100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:010b0ab922c26fc55be9e9d43742dbf9f206f037664c731bad008c83c2e45e13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcd6855676bf7f8b47eb31c4b711947ef7526105ac0d88b9d69cef26f176ee27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFilter (F : CFilter (Set α) σ) : Filter α where
  sets := { a | ∃ b, F b ⊆ a }
  univ_sets := ⟨F.pt, subset_univ _⟩
  sets_of_superset := fun ⟨b, h⟩ s ↦ ⟨b, Subset.trans h s⟩
  inter_sets := fun ⟨a, h₁⟩ ⟨b, h₂⟩ ↦ ⟨F.inf a b,
    subset_inter (Subset.trans (F.inf_le_left _ _) h₁) (Subset.trans (F.inf_le_right _ _) h₂)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant38cdec5d4d7159e0eebcb38f82138bc9a0929ea6df9516ae630bfc3c3fc85ba7.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1ceba3ff92b50bffd924ab11b9b796c73c9100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
