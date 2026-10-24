# GramFactorCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:767b14455c23a0a80b536647cd8d1c66311e44dc92da0044fa6a5a4f487fa558",
  "kind": "structure",
  "lexical_name": "GramFactorCertificate",
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
  "slug": "gramfactorcertificate--b08164461b705863bc031161",
  "source": {
    "blob": "568867b95673191268ab715001dc382024d9ab08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b08164461b705863bc03116191eafd557807561caa5258c4d1d5b9778a0fd212",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:767b14455c23a0a80b536647cd8d1c66311e44dc92da0044fa6a5a4f487fa558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GramFactorCertificate
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (FactorIndex : Type*) [Fintype FactorIndex] where
  factor : Matrix FactorIndex Active ℂ
  reconstructs : factor.conjTranspose * factor = finiteGram kernel indices

namespace GramFactorCertificate

variable
    {Index : Type u}
    {kernel : PositiveKernel Index}
    {Active : Type v}
    {indices : Active → Index}
    {FactorIndex : Type*}
    [Fintype FactorIndex]

/-- Certified factor columns realize the kernel entries exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568867b95673191268ab715001dc382024d9ab08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
