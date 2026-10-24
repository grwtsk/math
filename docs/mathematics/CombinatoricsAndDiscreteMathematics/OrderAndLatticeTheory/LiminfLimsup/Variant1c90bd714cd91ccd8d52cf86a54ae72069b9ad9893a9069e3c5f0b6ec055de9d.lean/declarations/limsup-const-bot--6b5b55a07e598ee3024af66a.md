# limsup_const_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4eab7b8b01fa686221086a49ae706a5f17007906",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 687,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5f9471a-befa-3bab-2412-348699e60cc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a257d55d-97a2-7c93-8f42-9786a4ea4a10",
  "kind": "theorem",
  "lexical_name": "limsup_const_bot",
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
  "slug": "limsup-const-bot--6b5b55a07e598ee3024af66a",
  "source": {
    "blob": "4eab7b8b01fa686221086a49ae706a5f17007906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 687,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5b55a07e598ee3024af66a0228749e9bce7784a4eed15e819d7ceafe68e03a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a257d55d-97a2-7c93-8f42-9786a4ea4a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_const_bot {f : Filter β} : limsup (fun _ : β => (⊥ : α)) f = (⊥ : α) := by
  rw [limsup_eq, eq_bot_iff]
  exact sInf_le (eventually_of_forall fun _ => le_rfl)
#align filter.limsup_const_bot Filter.limsup_const_bot

/-- Same as limsup_const applied to `⊤` but without the `NeBot f` assumption -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eab7b8b01fa686221086a49ae706a5f17007906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
