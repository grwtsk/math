# notMem_map_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca70b168b118ef6794d087343fc51b87cff9c4d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7825ffd-35ba-a36f-66f3-d59504d5234c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:912eaab6-f2c7-bb24-9492-7194a5fab46c",
  "kind": "theorem",
  "lexical_name": "notMem_map_range",
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
  "slug": "notmem-map-range--55a66a613f0d05910958d1e3",
  "source": {
    "blob": "ca70b168b118ef6794d087343fc51b87cff9c4d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Subring/Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a66a613f0d05910958d1e3b237e857e0ded1a2239d9cb4e1a497b7361846e7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Subring/Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:912eaab6-f2c7-bb24-9492-7194a5fab46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem notMem_map_range {R S : Type*} [Ring R] [Ring S] (f : R →+* S) {p : S[X]} :
    p ∉ (mapRingHom f).range ↔ ∃ n, p.coeff n ∉ f.range :=
  notMem_map_rangeS f

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Subring/Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Subring/Variant0b3ba20a7b61f5f97ecceb256466a68f30dd89576ec8cfc28b5cfc0d0e0db093.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca70b168b118ef6794d087343fc51b87cff9c4d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
