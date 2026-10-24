# PositiveNormalizationTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:445e28346233fef25c7fbc33e4545daec655275cbb581963cff2bdc655a628c4",
  "kind": "structure",
  "lexical_name": "PositiveNormalizationTransport",
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
  "slug": "positivenormalizationtransport--8697403f3c15888357fb9d81",
  "source": {
    "blob": "4f751942735e94b8ad98135b407600e809176067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 213,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8697403f3c15888357fb9d8170a26a24f1a728afda0aca54d5d4c0c9222dda5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:445e28346233fef25c7fbc33e4545daec655275cbb581963cff2bdc655a628c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveNormalizationTransport
    {T S : Type*}
    [AddCommGroup T] [Module ℂ T]
    [AddCommGroup S] [Module ℂ S]
    {repoSpace : WeilTestSpace T} {sourceSpace : WeilTestSpace S}
    (repoForm : WeilHermitianForm repoSpace)
    (sourceForm : WeilHermitianForm sourceSpace) where
  transportId : String
  toSource : repoSpace.Vector ≃ₗ[ℂ] sourceSpace.Vector
  scalar : ℝ
  scalar_positive : 0 < scalar
  diagonal_eq :
    ∀ f, repoForm.diagonal f = scalar * sourceForm.diagonal (toSource f)
  sourceRevision : String
  invalidationKey : String

namespace PositiveNormalizationTransport

/-- Positivity of the repository normalization implies positivity of the source
normalization when the conversion scalar is positive and the test map is an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f751942735e94b8ad98135b407600e809176067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
