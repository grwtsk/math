# acyclic_truncGE_iff_isSupportedOutside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9e9c5fe-ffa9-5fe1-dd21-4137796e6f28",
  "kind": "lemma",
  "lexical_name": "acyclic_truncGE_iff_isSupportedOutside",
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
  "slug": "acyclic-truncge-iff-issupportedoutside--f14d7e2f3a47dc516325340e",
  "source": {
    "blob": "5545aff54ffd355c967b84500586048882d9e1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f14d7e2f3a47dc516325340eae46c9529a32629da0309b0c739d37a961deae1c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e9c5fe-ffa9-5fe1-dd21-4137796e6f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma acyclic_truncGE_iff_isSupportedOutside :
    (K.truncGE e).Acyclic ↔ K.IsSupportedOutside e := by
  constructor
  · intro hK
    exact ⟨fun i ↦ by simpa only [exactAt_iff_of_quasiIsoAt (K.πTruncGE e)] using hK (e.f i)⟩
  · intro hK i'
    by_cases hi' : ∃ i, e.f i = i'
    · obtain ⟨i, rfl⟩ := hi'
      simpa only [← exactAt_iff_of_quasiIsoAt (K.πTruncGE e)] using hK.exactAt i
    · exact exactAt_of_isSupported _ e i' (by simpa using hi')

variable {K L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5545aff54ffd355c967b84500586048882d9e1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
