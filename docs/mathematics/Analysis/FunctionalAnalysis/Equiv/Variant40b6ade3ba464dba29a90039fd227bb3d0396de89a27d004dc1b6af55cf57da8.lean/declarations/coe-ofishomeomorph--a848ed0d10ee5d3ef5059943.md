# coe_ofIsHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "150a7877b2778ed601932e4dbb3294380b7e2b20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d713ea9-0de4-d5e4-805a-444880072aa9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b16e4c8-ace3-b73a-7877-b3192d4cfb61",
  "kind": "lemma",
  "lexical_name": "coe_ofIsHomeomorph",
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
  "slug": "coe-ofishomeomorph--a848ed0d10ee5d3ef5059943",
  "source": {
    "blob": "150a7877b2778ed601932e4dbb3294380b7e2b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1233,
    "line": 1230,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a848ed0d10ee5d3ef5059943820ee97d8fb6a4cf1f97e0a5031aeb64ecfcd974",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b16e4c8-ace3-b73a-7877-b3192d4cfb61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1230–1233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_ofIsHomeomorph : (ofIsHomeomorph f hf : M → M₁) = f := by dsimp [ofIsHomeomorph]

/-- A linear equivalence between topological modules is a homeomorphism if and only if it is
continuous in both directions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean#L1230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150a7877b2778ed601932e4dbb3294380b7e2b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
