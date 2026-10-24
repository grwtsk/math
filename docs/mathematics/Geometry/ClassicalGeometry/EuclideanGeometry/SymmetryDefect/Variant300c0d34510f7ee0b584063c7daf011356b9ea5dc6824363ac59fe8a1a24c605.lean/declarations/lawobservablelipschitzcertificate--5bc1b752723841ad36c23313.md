# LawObservableLipschitzCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f28ce6d80153ab4d08504adbf053b284ffc75dd51dfb508c717028cd9e68436",
  "kind": "structure",
  "lexical_name": "LawObservableLipschitzCertificate",
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
  "slug": "lawobservablelipschitzcertificate--5bc1b752723841ad36c23313",
  "source": {
    "blob": "b42151f89d0b2889b7caf2264868aa64c36a521f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 262,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bc1b752723841ad36c23313236de3ab75b57720fd7af536f6c361b5e19d7d1f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f28ce6d80153ab4d08504adbf053b284ffc75dd51dfb508c717028cd9e68436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LawObservableLipschitzCertificate
    {system : RandomBitfieldSystem}
    (carrier : WassersteinLawCarrier system) where
  observable : carrier.Law → ℝ
  lipschitz : ℝ≥0
  lipschitzBound :
    ∀ left right,
      |observable left - observable right| ≤
        (lipschitz : ℝ) *
          (carrier.wasserstein left right : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42151f89d0b2889b7caf2264868aa64c36a521f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
