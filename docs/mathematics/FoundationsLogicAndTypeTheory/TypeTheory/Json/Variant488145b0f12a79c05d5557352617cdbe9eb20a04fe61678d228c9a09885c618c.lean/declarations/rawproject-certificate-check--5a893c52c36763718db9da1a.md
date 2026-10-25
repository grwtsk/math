# rawProject_certificate_check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d067a9b989200350a66a8394c6405b9fb88c089d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificateCorrespondence/Json.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c1dac3a-1a7e-4986-26f5-b42eca25a264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:353a5b40-36c1-d24f-9738-5e7e01c4a4a8",
  "kind": "theorem",
  "lexical_name": "rawProject_certificate_check",
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
  "slug": "rawproject-certificate-check--5a893c52c36763718db9da1a",
  "source": {
    "blob": "d067a9b989200350a66a8394c6405b9fb88c089d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a893c52c36763718db9da1af29edd0b2e153a8d0e23e4d6799e9a3c6918665f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:353a5b40-36c1-d24f-9738-5e7e01c4a4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawProject_certificate_check {rawPlan rawExpected rawObserved : Raw}
    {input : Frozen} {certificate : RustCertificate}
    (_projected : rawProject rawPlan rawExpected rawObserved = some (input, certificate))
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    SourceRefinement.certificateCheck input.objects (readSets input) (readSets input) (bindings input)
      (projectedEntries input certificate) (projectedOutputs certificate) = true :=
  source_contract_certificate_check admitted contract

end GRWTSK.CertificateCorrespondence.Json
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d067a9b989200350a66a8394c6405b9fb88c089d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
