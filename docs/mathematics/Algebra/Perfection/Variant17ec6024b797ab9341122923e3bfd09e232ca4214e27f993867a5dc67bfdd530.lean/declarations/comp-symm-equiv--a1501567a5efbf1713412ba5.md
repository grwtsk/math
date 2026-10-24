# comp_symm_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89683c38081e135a2c85f39891c22b3fefb3abe7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7679016c-1baf-897d-7b22-53ad14b50c8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:862923a3-4309-4a0b-bcef-6a2740577f18",
  "kind": "theorem",
  "lexical_name": "comp_symm_equiv",
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
  "slug": "comp-symm-equiv--a1501567a5efbf1713412ba5",
  "source": {
    "blob": "89683c38081e135a2c85f39891c22b3fefb3abe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 303,
    "path": "GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1501567a5efbf1713412ba5456a016b9325ebeb385ca1d45ebce02f7949314d",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:862923a3-4309-4a0b-bcef-6a2740577f18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_symm_equiv {π : P →+* R} (m : PerfectionMap p π) (f : Ring.Perfection R p) :
    π (m.equiv.symm f) = Perfection.coeff R p 0 f :=
  (m.comp_equiv _).symm.trans <| congr_arg _ <| m.equiv.apply_symm_apply f
#align perfection_map.comp_symm_equiv PerfectionMap.comp_symm_equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89683c38081e135a2c85f39891c22b3fefb3abe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
