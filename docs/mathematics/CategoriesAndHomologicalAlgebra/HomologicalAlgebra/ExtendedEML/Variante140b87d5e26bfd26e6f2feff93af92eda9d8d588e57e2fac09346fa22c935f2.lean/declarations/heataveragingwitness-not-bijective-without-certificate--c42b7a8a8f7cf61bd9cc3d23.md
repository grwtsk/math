# heatAveragingWitness_not_bijective_without_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b2d114d04cfb8d11bf02a732c6257ed48854912",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8afb9861-1f7f-88c1-55e9-5e83727fe0cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cff0d0e-afe0-77d3-da50-51ef6a9f68da",
  "kind": "theorem",
  "lexical_name": "heatAveragingWitness_not_bijective_without_certificate",
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
  "slug": "heataveragingwitness-not-bijective-without-certificate--c42b7a8a8f7cf61bd9cc3d23",
  "source": {
    "blob": "4b2d114d04cfb8d11bf02a732c6257ed48854912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c42b7a8a8f7cf61bd9cc3d23746933e3a4093e313dbf79eed06e0de1e23bc8bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cff0d0e-afe0-77d3-da50-51ef6a9f68da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatAveragingWitness_not_bijective_without_certificate
    (A : HeatAveragingRepresentableObject) :
    A.bijective = false ->
      (ExtendedEML.heatAveragingWitness A).bijectivityStatus ≠
        BijectivityStatus.provedBijective := by
  intro h hstatus
  simp [bijectivityStatus, h] at hstatus

end ExtendedEML

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2d114d04cfb8d11bf02a732c6257ed48854912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
