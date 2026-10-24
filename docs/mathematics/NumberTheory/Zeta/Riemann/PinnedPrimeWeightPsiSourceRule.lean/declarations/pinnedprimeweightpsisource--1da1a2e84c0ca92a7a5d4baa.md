# pinnedPrimeWeightPsiSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:677155a755b21b8af1f55f94e73943ffbed9fc84b7504a886fc709ad3f6c71e0",
  "kind": "def",
  "lexical_name": "pinnedPrimeWeightPsiSource",
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
  "slug": "pinnedprimeweightpsisource--1da1a2e84c0ca92a7a5d4baa",
  "source": {
    "blob": "af64c7e1f8ffecceda8ec392a3027fdff8e943c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1da1a2e84c0ca92a7a5d4baa1243f337a63f3c3b330db40292b2493b79d6ed60",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:677155a755b21b8af1f55f94e73943ffbed9fc84b7504a886fc709ad3f6c71e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pinnedPrimeWeightPsiSource :
    PinnedPrimeWeightPsiSourceRecord where
  mathlibRepository := "leanprover-community/mathlib4"
  mathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"
  chebyshevPath := "Mathlib/NumberTheory/Chebyshev.lean"
  chebyshevBlob := "6ffaf1bc3538b5a86fae7f4c62cc1287f9d48f2a"
  psiDeclaration := "Chebyshev.psi"
  thetaDeclaration := "Chebyshev.theta"
  thetaLePsiDeclaration := "Chebyshev.theta_le_psi"
  psiThetaSqrtDeclaration :=
    "Chebyshev.psi_sub_theta_le_mul_sqrt"
  localPsiErrorPath :=
    "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean"
  localThetaErrorPath :=
    "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean"

/-- Stage-scaled full Chebyshev psi error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af64c7e1f8ffecceda8ec392a3027fdff8e943c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
