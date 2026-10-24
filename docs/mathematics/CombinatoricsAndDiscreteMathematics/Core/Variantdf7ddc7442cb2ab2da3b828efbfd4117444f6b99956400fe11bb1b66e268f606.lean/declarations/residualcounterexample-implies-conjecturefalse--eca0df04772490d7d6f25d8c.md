# residualCounterexample_implies_conjectureFalse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5180a2143be459a75f3cfc624ea7f3474d4f175e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b4dad2c-e6c7-f9ee-13c8-6cfae4061a64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2349ab51-6dc0-eff9-87b4-1986f8a5c263",
  "kind": "theorem",
  "lexical_name": "residualCounterexample_implies_conjectureFalse",
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
  "slug": "residualcounterexample-implies-conjecturefalse--eca0df04772490d7d6f25d8c",
  "source": {
    "blob": "5180a2143be459a75f3cfc624ea7f3474d4f175e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eca0df04772490d7d6f25d8c2d9289b535cfee79cc2a63ae28a108a4665ca7d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2349ab51-6dc0-eff9-87b4-1986f8a5c263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residualCounterexample_implies_conjectureFalse
    {K : T.Knot}
    (h : T.ResidualCounterexample K) :
    T.ConjectureFalse :=
  ⟨K, h.1.1.1, T.residualCounterexample_is_knotCounterexample h⟩

end OrientedKnotFillingTheory

end Surface.CosmeticSurgery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5180a2143be459a75f3cfc624ea7f3474d4f175e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
