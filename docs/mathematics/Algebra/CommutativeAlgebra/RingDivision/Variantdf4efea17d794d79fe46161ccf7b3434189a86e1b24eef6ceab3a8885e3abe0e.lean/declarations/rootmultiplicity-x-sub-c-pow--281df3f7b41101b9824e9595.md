# rootMultiplicity_X_sub_C_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2df7ecae68f4a9c63b2c09ad5a9f9309de72151",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:613075b4-5434-4414-c172-3505e5f1cb1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1019ddc8-74d4-1ab9-3a14-72507cd05e54",
  "kind": "theorem",
  "lexical_name": "rootMultiplicity_X_sub_C_pow",
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
  "slug": "rootmultiplicity-x-sub-c-pow--281df3f7b41101b9824e9595",
  "source": {
    "blob": "b2df7ecae68f4a9c63b2c09ad5a9f9309de72151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 177,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281df3f7b41101b9824e9595b644421d43f0848ca9cbf32e710d8ff458e92e66",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1019ddc8-74d4-1ab9-3a14-72507cd05e54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootMultiplicity_X_sub_C_pow [Nontrivial R] (a : R) (n : ℕ) :
    rootMultiplicity a ((X - C a) ^ n) = n := by
  have := rootMultiplicity_mul_X_sub_C_pow (a := a) (n := n) C.map_one_ne_zero
  rwa [rootMultiplicity_C, map_one, one_mul, zero_add] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2df7ecae68f4a9c63b2c09ad5a9f9309de72151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
