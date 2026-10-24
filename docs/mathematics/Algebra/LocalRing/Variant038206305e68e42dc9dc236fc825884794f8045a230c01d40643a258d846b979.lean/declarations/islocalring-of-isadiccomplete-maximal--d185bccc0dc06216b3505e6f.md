# isLocalRing_of_isAdicComplete_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d90a932399f18408d9a07f6ae70a9e7199552aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4bf602c-279e-e693-b9c9-3d3b92eaf804",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5022a8b3-97d1-10b2-8b02-641bd2244f2c",
  "kind": "theorem",
  "lexical_name": "isLocalRing_of_isAdicComplete_maximal",
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
  "slug": "islocalring-of-isadiccomplete-maximal--d185bccc0dc06216b3505e6f",
  "source": {
    "blob": "d90a932399f18408d9a07f6ae70a9e7199552aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d185bccc0dc06216b3505e6f32aca3b4b1a3c77efb5ef84a7cdbd0a0a71034a5",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5022a8b3-97d1-10b2-8b02-641bd2244f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalRing_of_isAdicComplete_maximal [IsAdicComplete m R] : IsLocalRing R where
  exists_pair_ne := ⟨0, 1, ne_of_mem_of_not_mem m.zero_mem
    (m.ne_top_iff_one.mp (Ideal.IsMaximal.ne_top hmax))⟩
  isUnit_or_isUnit_of_add_one {a b} hab := by
    simp only [isUnit_iff_notMem_of_isAdicComplete_maximal m]
    by_contra! h
    absurd m.add_mem h.1 h.2
    simpa [hab] using m.ne_top_iff_one.mp (Ideal.IsMaximal.ne_top hmax)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90a932399f18408d9a07f6ae70a9e7199552aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
