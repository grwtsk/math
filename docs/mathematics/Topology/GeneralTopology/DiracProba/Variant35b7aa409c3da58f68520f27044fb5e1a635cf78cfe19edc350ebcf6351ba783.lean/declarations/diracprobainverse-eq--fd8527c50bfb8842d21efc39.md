# diracProbaInverse_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95d825911a792f1459d413215d3b5c86e3ac9d56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80328c05-9595-83fc-80bb-61c1ee3a2f0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ec64ae-2810-0475-82ac-74a684bd39e3",
  "kind": "lemma",
  "lexical_name": "diracProbaInverse_eq",
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
  "slug": "diracprobainverse-eq--fd8527c50bfb8842d21efc39",
  "source": {
    "blob": "95d825911a792f1459d413215d3b5c86e3ac9d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd8527c50bfb8842d21efc393869aacd627fa8d81249bc4a698136a940084dcc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ec64ae-2810-0475-82ac-74a684bd39e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diracProbaInverse_eq [T0Space X] {x : X} {μ : range (diracProba (X := X))}
    (h : μ = diracProba x) :
    diracProbaInverse μ = x := by
  apply injective_diracProba_of_T0 (X := X)
  simp only [← h]
  exact (mem_range.mp μ.prop).choose_spec

/-- In a T0 topological space `X`, the assignment `x ↦ diracProba x` is a bijection to its
range in `ProbabilityMeasure X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95d825911a792f1459d413215d3b5c86e3ac9d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
