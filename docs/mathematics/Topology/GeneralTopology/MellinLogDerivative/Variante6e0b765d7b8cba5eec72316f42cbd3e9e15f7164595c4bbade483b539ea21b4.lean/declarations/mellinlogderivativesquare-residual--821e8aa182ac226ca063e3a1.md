# MellinLogDerivativeSquare.residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afe61f691cb6199faf1d6fd42a35db1bc309889ec9cd0444ceb8dfbb8a505dc5",
  "kind": "def",
  "lexical_name": "MellinLogDerivativeSquare.residual",
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
  "slug": "mellinlogderivativesquare-residual--821e8aa182ac226ca063e3a1",
  "source": {
    "blob": "aee4db9d5dc1a073a8f211e2e884c6244cfae951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:821e8aa182ac226ca063e3a15c6577fdc26f744b8f2a7e4eb1a8ac8cacea1e1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afe61f691cb6199faf1d6fd42a35db1bc309889ec9cd0444ceb8dfbb8a505dc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MellinLogDerivativeSquare.residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) (s : ℂ) : ℂ :=
  deriv (poleRemovedLFunction χ) s +
    (square.mellin s + dirichletPrincipalIndicator χ) *
      poleRemovedLFunction χ s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee4db9d5dc1a073a8f211e2e884c6244cfae951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
