# pinnedZetaChannelSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef1c3ebba912b59f05de777a56e9a68f39d30999fab26bab3450722136ba0e87",
  "kind": "def",
  "lexical_name": "pinnedZetaChannelSource",
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
  "slug": "pinnedzetachannelsource--145f9e1f812c5292faaa842d",
  "source": {
    "blob": "9d59f305367a68baaa5dffbeda2e9e8374a0973b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:145f9e1f812c5292faaa842d45d3725b040b8de926630cd93e7e9d5793428d4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef1c3ebba912b59f05de777a56e9a68f39d30999fab26bab3450722136ba0e87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pinnedZetaChannelSource : PinnedZetaChannelSourceRecord where
  mathlibRepository := "leanprover-community/mathlib4"
  mathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"
  riemannZetaPath := "Mathlib/NumberTheory/LSeries/RiemannZeta.lean"
  riemannZetaBlob := "3c92195fce20df7fda41cfd823b3266f83cf3070"
  zetaAsympPath := "Mathlib/NumberTheory/Harmonic/ZetaAsymp.lean"
  zetaAsympBlob := "6846dc699ecd29cc8a1754c1680176210969ffd1"
  localResiduePath :=
    "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean"
  functionalEquationDeclaration := "completedRiemannZeta_one_sub"
  trivialZeroDeclaration := "riemannZeta_neg_two_mul_nat_add_one"
  poleResidueDeclaration := "riemannZeta_residue_one"
  nontrivialResidueDeclaration :=
    "GRWTSK.RiemannHypothesis.CanonicalLogarithmicResidues.canonical_zero_scaled_limit"

/-- A typed record containing only source channels for which theorem terms are
already available.  It deliberately has no field for the still-missing global
explicit-formula summation theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d59f305367a68baaa5dffbeda2e9e8374a0973b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
