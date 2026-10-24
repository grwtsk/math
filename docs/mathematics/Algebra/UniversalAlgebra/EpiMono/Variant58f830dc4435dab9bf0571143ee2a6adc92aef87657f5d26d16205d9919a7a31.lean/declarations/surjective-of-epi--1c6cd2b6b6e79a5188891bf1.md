# surjective_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bdcf0998ad7c79b63ec3357c6a4bd1860f89892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5099f8c1-0805-93a0-9307-f90d2b7b677d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29759caa-c08f-061e-2bfd-a5d4aaec4e5e",
  "kind": "lemma",
  "lexical_name": "surjective_of_epi",
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
  "slug": "surjective-of-epi--1c6cd2b6b6e79a5188891bf1",
  "source": {
    "blob": "2bdcf0998ad7c79b63ec3357c6a4bd1860f89892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 46,
    "path": "GRWTSK/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c6cd2b6b6e79a5188891bf1e7aa9c9221bea46394452446becb373c022f8a10",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29759caa-c08f-061e-2bfd-a5d4aaec4e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_of_epi [Epi f] (X : Cᵒᵖ) :
    Function.Surjective (f.app X) := by
  rw [← ModuleCat.epi_iff_surjective]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdcf0998ad7c79b63ec3357c6a4bd1860f89892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
