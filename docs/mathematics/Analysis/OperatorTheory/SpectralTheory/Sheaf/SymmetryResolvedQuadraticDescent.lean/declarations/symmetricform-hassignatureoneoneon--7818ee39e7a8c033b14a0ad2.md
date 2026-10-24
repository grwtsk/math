# SymmetricForm.HasSignatureOneOneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:350ffa9c947a9a2668ea3f6e2f6d6811a7f3de4b2d3a9340e617ac273f6ace0b",
  "kind": "def",
  "lexical_name": "SymmetricForm.HasSignatureOneOneOn",
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
  "slug": "symmetricform-hassignatureoneoneon--7818ee39e7a8c033b14a0ad2",
  "source": {
    "blob": "5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7818ee39e7a8c033b14a0ad217f62fe4723a532e2f2026878b48bee8a0214dd8",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:350ffa9c947a9a2668ea3f6e2f6d6811a7f3de4b2d3a9340e617ac273f6ace0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SymmetricForm.HasSignatureOneOneOn
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (form : SymmetricForm V) (plane : Submodule ℚ V) : Prop :=
  ∃ basis : Fin 2 → V,
    LinearIndependent ℚ basis ∧
    Submodule.span ℚ (Set.range basis) = plane ∧
    0 < form.form (basis 0) (basis 0) ∧
    form.form (basis 1) (basis 1) < 0 ∧
    form.form (basis 0) (basis 1) = 0

/-- Finite coordinate matrices representing the Hermite and metric forms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
