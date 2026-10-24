# lawsonOpen_iff_scottOpen_of_isUpperSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70aab810566fe0cfaef281297bf79ab2b8cc7574",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3e8ba22-fb39-f64c-c87e-f5d193f95f4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22798e5a-e000-9caf-83c6-590e07a85b0d",
  "kind": "lemma",
  "lexical_name": "lawsonOpen_iff_scottOpen_of_isUpperSet",
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
  "slug": "lawsonopen-iff-scottopen-of-isupperset--ed2c5635c158d8896d05d202",
  "source": {
    "blob": "70aab810566fe0cfaef281297bf79ab2b8cc7574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2c5635c158d8896d05d202284f31234f73189f49455da6732fdac6cca1d37e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22798e5a-e000-9caf-83c6-590e07a85b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lawsonOpen_iff_scottOpen_of_isUpperSet {s : Set α} (h : IsUpperSet s) :
    IsOpen (WithLawson.ofLawson ⁻¹' s) ↔ IsOpen (WithScott.ofScott ⁻¹' s) :=
  ⟨fun hs => IsScott.isOpen_iff_isUpperSet_and_scottHausdorff_open (D := univ).mpr
    ⟨h, (scottHausdorff_le_lawson s) hs⟩, lawson_le_scott _⟩

variable (L : TopologicalSpace α) (S : TopologicalSpace α)
variable [@IsLawson α _ L] [@IsScott α univ _ S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70aab810566fe0cfaef281297bf79ab2b8cc7574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
