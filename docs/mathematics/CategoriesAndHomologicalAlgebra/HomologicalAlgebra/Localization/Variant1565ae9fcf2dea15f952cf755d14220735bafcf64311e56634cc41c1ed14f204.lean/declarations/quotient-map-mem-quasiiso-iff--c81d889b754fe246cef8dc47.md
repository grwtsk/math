# quotient_map_mem_quasiIso_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18cc2c00a4d9dce63c39dcde483588621831e653",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ccdda6d-179f-7243-9463-7c9a327bfd62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eab8836c-4981-5642-08a7-e04add2a181a",
  "kind": "lemma",
  "lexical_name": "quotient_map_mem_quasiIso_iff",
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
  "slug": "quotient-map-mem-quasiiso-iff--c81d889b754fe246cef8dc47",
  "source": {
    "blob": "18cc2c00a4d9dce63c39dcde483588621831e653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c81d889b754fe246cef8dc472971541590364518a5e343fdfeeaf0559ed065d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab8836c-4981-5642-08a7-e04add2a181a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_map_mem_quasiIso_iff {K L : HomologicalComplex C c} (f : K ⟶ L) :
    quasiIso C c ((quotient C c).map f) ↔ HomologicalComplex.quasiIso C c f := by
  have eq := fun (i : ι) => NatIso.isIso_map_iff (homologyFunctorFactors C c i) f
  dsimp at eq
  simp only [HomologicalComplex.mem_quasiIso_iff, mem_quasiIso_iff, quasiIso_iff,
    quasiIsoAt_iff_isIso_homologyMap, eq]

variable (C c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cc2c00a4d9dce63c39dcde483588621831e653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
