# shatterer_compress_subset_shatterer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c25621bd-f58d-5539-d0d6-4acf27b15417",
  "kind": "lemma",
  "lexical_name": "shatterer_compress_subset_shatterer",
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
  "slug": "shatterer-compress-subset-shatterer--9388350972db25928e948c2b",
  "source": {
    "blob": "bddb653f043aba4f91362356e9059b76c72ec719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9388350972db25928e948c2b296b9bf41c5ba1f6fb2359aa1b8a361b7bbb385f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c25621bd-f58d-5539-d0d6-4acf27b15417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shatterer_compress_subset_shatterer (a : α) (𝒜 : Finset (Finset α)) :
    (𝓓 a 𝒜).shatterer ⊆ 𝒜.shatterer := by
  simp only [subset_iff, mem_shatterer]; exact fun s hs ↦ hs.of_compression

/-! ### Vapnik-Chervonenkis dimension -/

/-- The Vapnik-Chervonenkis dimension of a set family is the maximal size of a set it shatters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bddb653f043aba4f91362356e9059b76c72ec719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
