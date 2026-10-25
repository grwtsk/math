# conductorThreeIntegerValue_mod_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "753d20080176c0d3ff76145d9c9f67b4cf70026c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:630493a1-48c0-82ae-69c0-7c3d79cacb2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:047ce14b-216c-20d1-d86d-b3f3c205f57c",
  "kind": "theorem",
  "lexical_name": "conductorThreeIntegerValue_mod_two",
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
  "slug": "conductorthreeintegervalue-mod-two--5fca581558101b186ddf1e70",
  "source": {
    "blob": "753d20080176c0d3ff76145d9c9f67b4cf70026c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fca581558101b186ddf1e702483231db6c8c085ceb68509078cf050f7fb16b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:047ce14b-216c-20d1-d86d-b3f3c205f57c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeIntegerValue_mod_two
    {n : ℕ} (h : n % 3 = 2) :
    conductorThreeIntegerValue n = -1 := by
  rw [conductorThreeIntegerValue, conductorThreeIntegerCharacter]
  have hn : (n : ZMod 3) = 2 :=
    (ZMod.natCast_eq_natCast_iff' n 2 3).2 (by simpa using h)
  rw [hn]
  norm_num [quadraticChar_apply, quadraticCharFun,
    not_isSquare_two_zmod_three, two_ne_zero_zmod_three]

/-- Exact three-way value table for `χ₃`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `753d20080176c0d3ff76145d9c9f67b4cf70026c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
