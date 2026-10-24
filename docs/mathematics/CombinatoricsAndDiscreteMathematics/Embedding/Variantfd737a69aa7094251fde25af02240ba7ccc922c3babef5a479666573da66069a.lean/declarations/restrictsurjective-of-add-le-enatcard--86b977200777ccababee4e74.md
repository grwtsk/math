# restrictSurjective_of_add_le_ENatCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd35a537-0398-28c9-c067-c8acd2354027",
  "kind": "theorem",
  "lexical_name": "restrictSurjective_of_add_le_ENatCard",
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
  "slug": "restrictsurjective-of-add-le-enatcard--86b977200777ccababee4e74",
  "source": {
    "blob": "1f74a4faf64ded278de615fad37eda18bdf0448c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b977200777ccababee4e74d7a91c5ede84597782ee569220cd60a4b5e68dd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd35a537-0398-28c9-c067-c8acd2354027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictSurjective_of_add_le_ENatCard (hn : m + n ≤ ENat.card α) :
    Surjective (fun (x : Fin (m + n) ↪ α) ↦ (Fin.castAddEmb n).trans x) := by
  intro x
  obtain ⟨y, hxy⟩ :=
    exists_embedding_disjoint_range_of_add_le_ENat_card (s := range x)
      (by simpa [← Nat.card_coe_set_eq, Nat.card_range_of_injective x.injective])
  use append hxy
  ext i
  simp [trans_apply, coe_castAddEmb, append]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f74a4faf64ded278de615fad37eda18bdf0448c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
