# powersetLen_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a01dc445830e58bbd825bdbe73e8ade66c19a8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fd5ae68-f3ff-0c18-4996-b2872ce12b21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3c9ebb7-966b-fcbb-672e-b4369e8f8655",
  "kind": "theorem",
  "lexical_name": "powersetLen_self",
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
  "slug": "powersetlen-self--8bc9046132da89890cdd48b0",
  "source": {
    "blob": "a01dc445830e58bbd825bdbe73e8ade66c19a8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bc9046132da89890cdd48b0784c7b0eecd85b3c6c77f3d4cbf9de47d30a980c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3c9ebb7-966b-fcbb-672e-b4369e8f8655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powersetLen_self (s : Finset α) : powersetLen s.card s = {s} := by
  ext
  rw [mem_powersetLen, mem_singleton]
  constructor
  · exact fun ⟨hs, hc⟩ => eq_of_subset_of_card_le hs hc.ge
  · rintro rfl
    simp
#align finset.powerset_len_self Finset.powersetLen_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01dc445830e58bbd825bdbe73e8ade66c19a8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
