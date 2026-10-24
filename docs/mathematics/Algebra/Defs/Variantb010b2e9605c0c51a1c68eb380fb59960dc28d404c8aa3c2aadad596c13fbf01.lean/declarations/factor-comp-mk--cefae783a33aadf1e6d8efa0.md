# factor_comp_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c73dc56118f1f2f169414529a71c29d1592b9cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40f405db-530c-530b-8339-92f6774feb6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69c03e9b-445f-5e09-248f-a5aa58101d30",
  "kind": "theorem",
  "lexical_name": "factor_comp_mk",
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
  "slug": "factor-comp-mk--cefae783a33aadf1e6d8efa0",
  "source": {
    "blob": "9c73dc56118f1f2f169414529a71c29d1592b9cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 176,
    "path": "GRWTSK/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cefae783a33aadf1e6d8efa0d710d6220f126d787201b9ff8b2daa3afcbb746f",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69c03e9b-445f-5e09-248f-a5aa58101d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factor_comp_mk (H : S ≤ T) : (factor H).comp (mk S) = mk T := by
  ext x
  rw [RingHom.comp_apply, factor_mk]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c73dc56118f1f2f169414529a71c29d1592b9cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
