# omitted_unit_column_is_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a0952559a15f69a6c33f3dee7a159c3c6ea263c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65e9500b-6a46-e1dc-6670-387129891784",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53f015a9-666b-926a-f402-e47bdd3c9e48",
  "kind": "theorem",
  "lexical_name": "omitted_unit_column_is_false",
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
  "slug": "omitted-unit-column-is-false--3b97c4ae3e56169d5133a5c0",
  "source": {
    "blob": "5a0952559a15f69a6c33f3dee7a159c3c6ea263c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b97c4ae3e56169d5133a5c091a8849bec69b5fc399f4b9f2b0a1078dd7209b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f015a9-666b-926a-f402-e47bdd3c9e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omitted_unit_column_is_false :
    offDiagonal (Finset.Ioc 1 2)
      (fun m n ↦ vonMangoldt m * atomWeight 2 (m * n)) (fun _ ↦ 1) ≠
    rectangle (Finset.Icc 1 2)
      (fun m n ↦ vonMangoldt m * atomWeight 2 (m * n)) (fun _ ↦ 1) := by
  have hi : Finset.Ioc 1 2 = ({2} : Finset ℕ) := by decide
  have hc : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  convert (ne_of_lt hp) using 1 <;>
    norm_num [offDiagonal, rectangle, diagonal, hi, hc, atomWeight,
      vonMangoldt_apply_prime Nat.prime_two]

/-- On a supported synthetic four-product carrier, the deleted diagonal is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0952559a15f69a6c33f3dee7a159c3c6ea263c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
