# getElem!_toArray_roc_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cb8196d4c1e462cb5e6fabf34b70acd502a2efc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8d570f4b72c907188b6898fda9914e345bf89309fc047f17470d34eaa445683.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1ec07f7-25d0-0eb3-11a8-d96780d7ae4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15c5b091-8f43-b620-bfd1-7df1d9f403e0",
  "kind": "theorem",
  "lexical_name": "getElem!_toArray_roc_eq_zero",
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
  "slug": "getelem-toarray-roc-eq-zero--f2e3778e6406fc3a40c6efa9",
  "source": {
    "blob": "6cb8196d4c1e462cb5e6fabf34b70acd502a2efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1595,
    "line": 1592,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantf8d570f4b72c907188b6898fda9914e345bf89309fc047f17470d34eaa445683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e3778e6406fc3a40c6efa9f8fca9a44fb4ec3f8d79f6d6709ad47445d5d06e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantf8d570f4b72c907188b6898fda9914e345bf89309fc047f17470d34eaa445683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15c5b091-8f43-b620-bfd1-7df1d9f403e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1592–1595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem!_toArray_roc_eq_zero {m n : Int} {i : Nat} (h : (n - m).toNat ≤ i) :
    (m<...=n).toArray[i]! = 0 := by
  simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantf8d570f4b72c907188b6898fda9914e345bf89309fc047f17470d34eaa445683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantf8d570f4b72c907188b6898fda9914e345bf89309fc047f17470d34eaa445683.lean#L1592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb8196d4c1e462cb5e6fabf34b70acd502a2efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
