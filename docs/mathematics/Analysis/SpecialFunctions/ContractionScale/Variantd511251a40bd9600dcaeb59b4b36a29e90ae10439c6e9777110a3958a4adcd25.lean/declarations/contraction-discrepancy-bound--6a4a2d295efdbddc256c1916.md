# contraction_discrepancy_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bf08d092ba61554f786905ccd6dcab813f1c678",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9690fdac-6c7c-42f2-7652-5a39e0038fd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86c18c00-c8d9-f573-e495-2ca1f4f25b9a",
  "kind": "theorem",
  "lexical_name": "contraction_discrepancy_bound",
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
  "slug": "contraction-discrepancy-bound--6a4a2d295efdbddc256c1916",
  "source": {
    "blob": "4bf08d092ba61554f786905ccd6dcab813f1c678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a4a2d295efdbddc256c19165a95092e6c9c6f0d1d893d57f68ff3aae4bb0660",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ContractionScale/Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86c18c00-c8d9-f573-e495-2ca1f4f25b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contraction_discrepancy_bound
    {Index : Type*}
    (certificate :
      ContractionToDiscrepancyCertificate Index)
    (index : Index) :
    |certificate.discrepancy index| ≤
      certificate.constant *
        (1 /
          Real.sqrt
            (certificate.scale.arithmeticMass index)) *
        (1 +
          Real.log
            (certificate.scale.arithmeticMass index)) ^
          certificate.logarithmicPower :=
  certificate.bound index

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ContractionScale/Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf08d092ba61554f786905ccd6dcab813f1c678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
