# spec_z_duality_toHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95d2440da4a3b49513c1e67387327370978ecf6cd9ce39fd4e27341f23897aad",
  "kind": "def",
  "lexical_name": "spec_z_duality_toHom",
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
  "slug": "spec-z-duality-tohom--a97e51de6e411e1ff60d2ff2",
  "source": {
    "blob": "76df9615bb0a1a2e2b3d169287df1cec39176b68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AttachmentSpectralArithmeticEnvelope/Variantb3a72c6b7ddd97c3063fc764983a508bdefe6ec3373959e87b04acf8f7071dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a97e51de6e411e1ff60d2ff2a734542b77b01c1f4851e6df9a78036aa812864d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AttachmentSpectralArithmeticEnvelope/Variantb3a72c6b7ddd97c3063fc764983a508bdefe6ec3373959e87b04acf8f7071dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95d2440da4a3b49513c1e67387327370978ecf6cd9ce39fd4e27341f23897aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spec_z_duality_toHom
    {Divisor : Type u}
    (D : SpecZDualityCarrier Divisor) :
    D.h0AtCanonicalMinus D.divisor →
      D.homToDualizing (D.h1 D.divisor) D.dualizing :=
  D.serrePontryaginDuality.toFun

/-- Projection of the inverse Serre/Pontryagin duality map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AttachmentSpectralArithmeticEnvelope/Variantb3a72c6b7ddd97c3063fc764983a508bdefe6ec3373959e87b04acf8f7071dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AttachmentSpectralArithmeticEnvelope/Variantb3a72c6b7ddd97c3063fc764983a508bdefe6ec3373959e87b04acf8f7071dc7.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76df9615bb0a1a2e2b3d169287df1cec39176b68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
