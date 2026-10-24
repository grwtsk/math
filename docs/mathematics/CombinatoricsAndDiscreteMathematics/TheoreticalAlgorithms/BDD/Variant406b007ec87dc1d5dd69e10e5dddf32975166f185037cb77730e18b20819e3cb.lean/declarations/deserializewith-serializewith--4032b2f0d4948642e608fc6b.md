# deserializeWith_serializeWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4713dc0127aaa564352d8f43b33439c7314bd713",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0342636-f5fd-818f-0c12-96eb07bcf809",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:643bda57-a855-fb66-59af-7d2170a9e47e",
  "kind": "theorem",
  "lexical_name": "deserializeWith_serializeWith",
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
  "slug": "deserializewith-serializewith--4032b2f0d4948642e608fc6b",
  "source": {
    "blob": "4713dc0127aaa564352d8f43b33439c7314bd713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 571,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4032b2f0d4948642e608fc6b37a58ccfc0a7a5cdfc3eea0c23e5d6444980877e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:643bda57-a855-fb66-59af-7d2170a9e47e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deserializeWith_serializeWith
    (encode : α → β)
    (decode : β → α)
    (h : ∀ a : α, decode (encode a) = a)
    (dag : Dag α) :
    deserializeWith decode (serializeWith encode dag) = dag := by
  cases dag with
  | mk nodes =>
      have hnodes :
          List.map (deserializeNodeWith decode ∘ serializeNodeWith encode) nodes =
            nodes := by
        induction nodes with
        | nil => rfl
        | cons node nodes ih =>
            simp [ih, deserializeNodeWith_serializeNodeWith, h]
      simp [serializeWith, deserializeWith, hnodes]

/-- Serialize a DAG together with a root reference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4713dc0127aaa564352d8f43b33439c7314bd713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
