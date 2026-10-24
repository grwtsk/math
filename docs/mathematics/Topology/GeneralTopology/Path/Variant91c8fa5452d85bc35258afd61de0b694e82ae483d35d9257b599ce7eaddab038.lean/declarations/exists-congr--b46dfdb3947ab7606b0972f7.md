# exists_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d9635ef4ad6dd478f60ca07e612646c670705ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 410,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf7a461f-6233-0881-6834-305ea0d5e671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d6a4643-5733-46d7-08e6-8b2bccd1217d",
  "kind": "lemma",
  "lexical_name": "exists_congr",
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
  "slug": "exists-congr--b46dfdb3947ab7606b0972f7",
  "source": {
    "blob": "5d9635ef4ad6dd478f60ca07e612646c670705ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 410,
    "path": "GRWTSK/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b46dfdb3947ab7606b0972f7f80b75343d2b4b74f676fb7d012f6b3ff2ccd446",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d6a4643-5733-46d7-08e6-8b2bccd1217d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_congr {x₁ x₂ y₁ y₂ : X} {p : Path x₁ y₁ → Prop}
    (hx : x₁ = x₂) (hy : y₁ = y₂) :
    (∃ γ, p γ) ↔ (∃ (γ : Path x₂ y₂), p (γ.cast hx hy)) :=
  bijective_cast hx hy |>.surjective.exists

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d9635ef4ad6dd478f60ca07e612646c670705ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
