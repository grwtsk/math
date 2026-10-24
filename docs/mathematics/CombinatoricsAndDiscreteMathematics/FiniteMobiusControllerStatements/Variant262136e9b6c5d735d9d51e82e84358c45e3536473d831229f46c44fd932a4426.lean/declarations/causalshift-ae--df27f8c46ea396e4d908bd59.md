# causalShift_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f28b69d2591b3899a72999b0d850702bda6966fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/262136e9b6c5d735d9d51e82e84358c45e3536473d831229f46c44fd932a4426.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:662f3e64-f84f-7ff9-853c-2e0383e10618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32b8b8c5-a6ea-9394-c6ee-1619266802b2",
  "kind": "theorem",
  "lexical_name": "causalShift_ae",
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
  "slug": "causalshift-ae--df27f8c46ea396e4d908bd59",
  "source": {
    "blob": "f28b69d2591b3899a72999b0d850702bda6966fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant262136e9b6c5d735d9d51e82e84358c45e3536473d831229f46c44fd932a4426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df27f8c46ea396e4d908bd5942b58265e286b9b4fe04fd70649745da4eabf33c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant262136e9b6c5d735d9d51e82e84358c45e3536473d831229f46c44fd932a4426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b8b8c5-a6ea-9394-c6ee-1619266802b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalShift_ae (a : ℝ) (p : H) :
    causalShift a p =ᵐ[halfLineMeasure]
      (fun t : ℝ => (Ioi (0 : ℝ)).indicator p (t - a)) := by
  have h := (measurePreserving_sub_right volume a).quasiMeasurePreserving.ae_eq_comp
    (zeroExtension_ae p)
  filter_upwards [restriction_ae (fullShift a (zeroExtension p)),
    ae_restrict_of_ae (fullShift_ae a (zeroExtension p)), ae_restrict_of_ae h]
      with t hr hs ht
  exact hr.trans (hs.trans ht)

/-- The admitted shift has finite norm without a compact-support assumption on the input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant262136e9b6c5d735d9d51e82e84358c45e3536473d831229f46c44fd932a4426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant262136e9b6c5d735d9d51e82e84358c45e3536473d831229f46c44fd932a4426.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f28b69d2591b3899a72999b0d850702bda6966fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
