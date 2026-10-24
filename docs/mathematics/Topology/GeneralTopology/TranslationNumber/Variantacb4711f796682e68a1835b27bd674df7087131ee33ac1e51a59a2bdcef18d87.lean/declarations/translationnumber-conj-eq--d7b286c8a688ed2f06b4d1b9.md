# translationNumber_conj_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af72e3fe717e1d7fecd4defc5613fcf324547514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 756,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e182d0f-d2dd-2567-275e-8092165ed8eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33a6a5a9-f075-4ade-fa57-c4410baf5a09",
  "kind": "theorem",
  "lexical_name": "translationNumber_conj_eq",
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
  "slug": "translationnumber-conj-eq--d7b286c8a688ed2f06b4d1b9",
  "source": {
    "blob": "af72e3fe717e1d7fecd4defc5613fcf324547514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 756,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b286c8a688ed2f06b4d1b930db8a6d4fcac12e7b9bdd6040bc52b24ae223e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33a6a5a9-f075-4ade-fa57-c4410baf5a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 756–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translationNumber_conj_eq (f : CircleDeg1Liftˣ) (g : CircleDeg1Lift) :
    τ (↑f * g * ↑f⁻¹) = τ g :=
  (translationNumber_eq_of_semiconjBy (f.mk_semiconjBy g)).symm
#align circle_deg1_lift.translation_number_conj_eq CircleDeg1Lift.translationNumber_conj_eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean#L756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af72e3fe717e1d7fecd4defc5613fcf324547514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
