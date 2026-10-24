# isSheaf_iff_isTerminal_of_indiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40262d6e73da81f61650dcb032db6cee11c1dea1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:349a50c3-58b7-d14d-5fd9-90218b9b42ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cb0cb5d-14f8-35b7-64c3-c9ae88147337",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isTerminal_of_indiscrete",
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
  "slug": "issheaf-iff-isterminal-of-indiscrete--632711e5c250b5e5a2290538",
  "source": {
    "blob": "40262d6e73da81f61650dcb032db6cee11c1dea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Topology/PUnit/Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:632711e5c250b5e5a2290538dab20a6345e5001ac5f30c2a682b38a5129f865e",
  "verification": {
    "reference": "docs/verification/Topology/PUnit/Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cb0cb5d-14f8-35b7-64c3-c9ae88147337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isTerminal_of_indiscrete {X : TopCat.{w}} (hind : X.str = ⊤)
    (F : Presheaf C X) : F.IsSheaf ↔ Nonempty (IsTerminal <| F.obj <| op ⊥) :=
  ⟨fun h => ⟨Sheaf.isTerminalOfEmpty ⟨F, h⟩⟩, fun ⟨it⟩ =>
    isSheaf_of_isTerminal_of_indiscrete hind F it⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PUnit/Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PUnit/Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40262d6e73da81f61650dcb032db6cee11c1dea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
