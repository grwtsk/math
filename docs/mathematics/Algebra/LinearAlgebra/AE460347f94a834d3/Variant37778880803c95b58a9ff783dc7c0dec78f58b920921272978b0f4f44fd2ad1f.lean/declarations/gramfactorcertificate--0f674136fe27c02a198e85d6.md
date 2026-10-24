# GramFactorCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de25aa4ea49c05c2a9817b53ea2eb4c0a0238f1d71a57c68a5da497e5478f344",
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
  "slug": "gramfactorcertificate--0f674136fe27c02a198e85d6",
  "source": {
    "blob": "32f2def905e9f3175a29a807be0e63ac736519f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 19,
    "path": "GRWTSK/Algebra/LinearAlgebra/AE460347f94a834d3/Variant37778880803c95b58a9ff783dc7c0dec78f58b920921272978b0f4f44fd2ad1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f674136fe27c02a198e85d6a5d57f1c9c264f1a52fcb789dab05b795b3eeee2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AE460347f94a834d3/Variant37778880803c95b58a9ff783dc7c0dec78f58b920921272978b0f4f44fd2ad1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de25aa4ea49c05c2a9817b53ea2eb4c0a0238f1d71a57c68a5da497e5478f344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–40.

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

end GramFactorCertificate

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AE460347f94a834d3/Variant37778880803c95b58a9ff783dc7c0dec78f58b920921272978b0f4f44fd2ad1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AE460347f94a834d3/Variant37778880803c95b58a9ff783dc7c0dec78f58b920921272978b0f4f44fd2ad1f.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f2def905e9f3175a29a807be0e63ac736519f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
