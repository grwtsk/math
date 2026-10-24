# pinnedKnownZetaExplicitFormulaChannels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ade23ee24d34d65650caffb08561f8a7a4b3129f76f8b65c28931da860f2eeed",
  "kind": "def",
  "lexical_name": "pinnedKnownZetaExplicitFormulaChannels",
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
  "slug": "pinnedknownzetaexplicitformulachannels--e7a907ae5b05442359328d09",
  "source": {
    "blob": "9d59f305367a68baaa5dffbeda2e9e8374a0973b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7a907ae5b05442359328d09c9bd92803817546e6962537b6f30fd335f38f545",
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

Occurrence: `declaration:ade23ee24d34d65650caffb08561f8a7a4b3129f76f8b65c28931da860f2eeed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pinnedKnownZetaExplicitFormulaChannels :
    KnownZetaExplicitFormulaChannels where
  primePowerCoefficient :=
    mathlibVonMangoldtCoefficient_eq_mangoldtScale
  vonMangoldtLogDeriv := by
    intro s hs
    exact pinned_vonMangoldt_lseries_eq_neg_logDeriv hs
  poleResidue := riemannZeta_residue_one
  trivialZeros := riemannZeta_neg_two_mul_nat_add_one
  completedFunctionalEquation := completedRiemannZeta_one_sub
  nontrivialLogResidue := by
    intro z
    exact CanonicalLogarithmicResidues.canonical_zero_scaled_limit z

/-- The completed functional equation is already available at every complex
point; it is not a hypothesis of the remaining global summation problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d59f305367a68baaa5dffbeda2e9e8374a0973b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
