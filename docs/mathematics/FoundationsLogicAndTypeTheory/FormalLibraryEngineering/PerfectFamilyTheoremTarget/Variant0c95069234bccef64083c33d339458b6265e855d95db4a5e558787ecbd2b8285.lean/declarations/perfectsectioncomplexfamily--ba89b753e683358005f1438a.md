# PerfectSectionComplexFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26bdd93f7158656cc6b4cc1016c2a64ab6f79df7829b0422f2894776a70d1812",
  "kind": "structure",
  "lexical_name": "PerfectSectionComplexFamily",
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
  "slug": "perfectsectioncomplexfamily--ba89b753e683358005f1438a",
  "source": {
    "blob": "f4b9860332abcd6efd33ef1ada77fc6edf71c2af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerfectFamilyTheoremTarget/Variant0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba89b753e683358005f1438aa8df5ae072b4db31422ed3baa99bf490fc3f8935",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerfectFamilyTheoremTarget/Variant0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26bdd93f7158656cc6b4cc1016c2a64ab6f79df7829b0422f2894776a70d1812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PerfectSectionComplexFamily where
  base : ArithmeticModuliStage
  complexAt :
    ∀ x : base.ParameterSpace, base.relevantPoint x → DerivedSheaf.PerfectComplex
  baseChangeCompatible : Prop
  baseChangeCompatible_certified : baseChangeCompatible
  perfectOverBase : Prop
  perfectOverBase_certified : perfectOverBase
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerfectFamilyTheoremTarget/Variant0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerfectFamilyTheoremTarget/Variant0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b9860332abcd6efd33ef1ada77fc6edf71c2af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
