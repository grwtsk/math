# sum_antidiagonal_choose_succ_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "114ab79bb6996feaa153f61adff9a5187f5800de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbca67f03a1951b004626f42c3ae4b0bac6f44cd3222020aae2ae052fe37033a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e86868b-abf4-9111-5ca7-b8eb2e5e0ebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fab63b0c-eff0-128c-9e0f-d887a6156b88",
  "kind": "theorem",
  "lexical_name": "sum_antidiagonal_choose_succ_mul",
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
  "slug": "sum-antidiagonal-choose-succ-mul--3a75aae08cbbcb4a1bd9348f",
  "source": {
    "blob": "114ab79bb6996feaa153f61adff9a5187f5800de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantcbca67f03a1951b004626f42c3ae4b0bac6f44cd3222020aae2ae052fe37033a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a75aae08cbbcb4a1bd9348fe702fc084dcbe996e7d03c0595d1a0135cb4724f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sum/Variantcbca67f03a1951b004626f42c3ae4b0bac6f44cd3222020aae2ae052fe37033a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fab63b0c-eff0-128c-9e0f-d887a6156b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_antidiagonal_choose_succ_mul (f : ℕ → ℕ → R) (n : ℕ) :
    (∑ ij ∈ antidiagonal (n + 1), ((n + 1).choose ij.1 : R) * f ij.1 ij.2) =
      (∑ ij ∈ antidiagonal n, (n.choose ij.1 : R) * f ij.1 (ij.2 + 1)) +
        ∑ ij ∈ antidiagonal n, (n.choose ij.2 : R) * f (ij.1 + 1) ij.2 := by
  simpa only [nsmul_eq_mul] using sum_antidiagonal_choose_succ_nsmul f n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sum/Variantcbca67f03a1951b004626f42c3ae4b0bac6f44cd3222020aae2ae052fe37033a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantcbca67f03a1951b004626f42c3ae4b0bac6f44cd3222020aae2ae052fe37033a.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `114ab79bb6996feaa153f61adff9a5187f5800de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
