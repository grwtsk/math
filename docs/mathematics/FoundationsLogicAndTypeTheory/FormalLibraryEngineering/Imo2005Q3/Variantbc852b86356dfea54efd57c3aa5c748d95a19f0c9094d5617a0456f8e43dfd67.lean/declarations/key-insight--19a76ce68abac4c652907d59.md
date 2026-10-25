# key_insight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd86a1a27cdfdc54609074719502f50278f709cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c6087b6-7114-8085-7c9a-efacee302351",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90780830-333c-5cb0-b18f-1e899fc63f7a",
  "kind": "theorem",
  "lexical_name": "key_insight",
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
  "slug": "key-insight--19a76ce68abac4c652907d59",
  "source": {
    "blob": "fd86a1a27cdfdc54609074719502f50278f709cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2005Q3/Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19a76ce68abac4c652907d59b017c94039a38e1ae887c567938d68ad9b2d9a4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2005Q3/Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90780830-333c-5cb0-b18f-1e899fc63f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem key_insight (x y z : ℝ) (hx : x > 0) (hy : y > 0) (hz : z > 0) (h : x * y * z ≥ 1) :
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) ≥ (x ^ 2 - y * z) / (x ^ 2 + y ^ 2 + z ^ 2) := by
  have key :
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) -
        (x ^ 5 - x ^ 2 * 1) / (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2)) =
      (x ^ 3 - 1) ^ 2 * x ^ 2 * (y ^ 2 + z ^ 2) /
        ((x ^ 5 + y ^ 2 + z ^ 2) * (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2))) := by
    field_simp
    ring
  have h₅ :
    (x ^ 3 - 1) ^ 2 * x ^ 2 * (y ^ 2 + z ^ 2) /
        ((x ^ 5 + y ^ 2 + z ^ 2) * (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2))) ≥
      0 :=
    by positivity
  calc
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2)
      ≥ (x ^ 5 - x ^ 2 * 1) / (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2)) := by linarith only [key, h₅]
    _ ≥ (x ^ 5 - x ^ 2 * (x * y * z)) / (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2)) := by gcongr
    _ = (x ^ 2 - y * z) / (x ^ 2 + y ^ 2 + z ^ 2) := by field_simp; ring
#align imo2005_q3.key_insight Imo2005Q3.key_insight

end Imo2005Q3

open Imo2005Q3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2005Q3/Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2005Q3/Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd86a1a27cdfdc54609074719502f50278f709cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
