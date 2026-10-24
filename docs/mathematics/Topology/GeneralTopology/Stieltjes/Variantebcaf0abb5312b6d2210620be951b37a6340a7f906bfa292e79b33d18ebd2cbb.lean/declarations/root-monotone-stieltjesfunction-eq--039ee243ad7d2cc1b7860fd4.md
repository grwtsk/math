# _root_.Monotone.stieltjesFunction_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "741a735ff1afa6ceabadb9c4775b5a82bcb12840",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d9498b5-a94e-11fb-f5c6-9a7f2465a7e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73eb1054-dd47-8bc6-4729-49fdbda49770",
  "kind": "theorem",
  "lexical_name": "_root_.Monotone.stieltjesFunction_eq",
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
  "slug": "root-monotone-stieltjesfunction-eq--039ee243ad7d2cc1b7860fd4",
  "source": {
    "blob": "741a735ff1afa6ceabadb9c4775b5a82bcb12840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:039ee243ad7d2cc1b7860fd4f69e4556c5e46f6a872d6e83d9a8f5bee2135b54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73eb1054-dd47-8bc6-4729-49fdbda49770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Monotone.stieltjesFunction_eq {f : ℝ → ℝ} (hf : Monotone f) (x : ℝ) :
    hf.stieltjesFunction x = rightLim f x :=
  rfl
#align monotone.stieltjes_function_eq Monotone.stieltjesFunction_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `741a735ff1afa6ceabadb9c4775b5a82bcb12840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
