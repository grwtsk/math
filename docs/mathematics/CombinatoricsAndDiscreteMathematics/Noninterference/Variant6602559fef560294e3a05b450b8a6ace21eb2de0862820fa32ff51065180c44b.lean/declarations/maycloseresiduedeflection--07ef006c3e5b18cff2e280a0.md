# MayCloseResidueDeflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d50e6102767154c2a900ad0eac17a04e4dbff8984c91bcd9dfc84cd57e714f9",
  "kind": "inductive",
  "lexical_name": "MayCloseResidueDeflection",
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
  "slug": "maycloseresiduedeflection--07ef006c3e5b18cff2e280a0",
  "source": {
    "blob": "cd1c997a054f3c8fcc41a67da44210af3518f00a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07ef006c3e5b18cff2e280a0f8c2afa1a32c01d58501b092de5fdb6ec79276c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d50e6102767154c2a900ad0eac17a04e4dbff8984c91bcd9dfc84cd57e714f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MayCloseResidueDeflection :
    ResidueDeflectionEvidenceSource →
      ResidueDeflectionUnknown → Prop
  | arithmeticLabel :
      MayCloseResidueDeflection
        .arithmeticLabelCertificate
        .arithmeticBaseLabel
  | bypass :
      MayCloseResidueDeflection
        .bypassCertificate
        .bypassGeometry
  | safePhase :
      MayCloseResidueDeflection
        .phaseCertificate
        .safeResiduePreservation
  | tuple :
      MayCloseResidueDeflection
        .tupleCertificate
        .tupleConstraintStabilizer
  | amplitude :
      MayCloseResidueDeflection
        .amplitudeCertificate
        .amplitudePositivity
  | cocycle :
      MayCloseResidueDeflection
        .cocycleCertificate
        .deflectionCocycle
  | holonomy :
      MayCloseResidueDeflection
        .holonomyCertificate
        .defectHolonomy
  | covariance :
      MayCloseResidueDeflection
        .covarianceCertificate
        .packetCovariance
  | compensation :
      MayCloseResidueDeflection
        .compensationCertificate
        .traceCompensation
  | arithmeticTrace :
      MayCloseResidueDeflection
        .arithmeticTraceCertificate
        .arithmeticTraceCorrespondence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd1c997a054f3c8fcc41a67da44210af3518f00a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
