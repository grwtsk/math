# moserPoint_coordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cafef8a1a5153a7c27692a8f7ce1f17ecd6d3cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da5e103b-be01-cb33-17a3-db894bea9ccb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cafeb319-139b-cec5-a15b-fdde6dbbfc5d",
  "kind": "theorem",
  "lexical_name": "moserPoint_coordinates",
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
  "slug": "moserpoint-coordinates--c2c845bc785b0f5957e85c93",
  "source": {
    "blob": "8cafef8a1a5153a7c27692a8f7ce1f17ecd6d3cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoserCoordinates/Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c845bc785b0f5957e85c931b42214d91467de16b1450e81ec8c5ce2e31b35b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoserCoordinates/Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cafeb319-139b-cec5-a15b-fdde6dbbfc5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moserPoint_coordinates (i : Fin 7) :
    ((moserPoint i).re, (moserPoint i).im) = packetCoordinates i := by
  fin_cases i <;> apply Prod.ext <;>
    norm_num [packetCoordinates, moserPoint, moserA, moserB, moserT, moserU,
      Complex.mul_re, Complex.mul_im, Complex.div_ofReal_re, Complex.div_ofReal_im,
      Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im] <;> ring

end

end FormalResearch.HadwigerNelson
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoserCoordinates/Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoserCoordinates/Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cafef8a1a5153a7c27692a8f7ce1f17ecd6d3cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
