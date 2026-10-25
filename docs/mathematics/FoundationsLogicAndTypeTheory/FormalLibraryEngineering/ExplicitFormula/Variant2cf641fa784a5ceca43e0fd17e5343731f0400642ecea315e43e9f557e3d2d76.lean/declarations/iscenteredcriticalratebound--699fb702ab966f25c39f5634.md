# IsCenteredCriticalRateBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79217a7946e3342c7837d75c71c07c053af3ae408ba77e3fa390b188ee521d81",
  "kind": "def",
  "lexical_name": "IsCenteredCriticalRateBound",
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
  "slug": "iscenteredcriticalratebound--699fb702ab966f25c39f5634",
  "source": {
    "blob": "c92d30bafa5ada82dd8e51808c1d0c2f064c2aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:699fb702ab966f25c39f563427f1268c573a48a563c7789a08e49a225421cc11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79217a7946e3342c7837d75c71c07c053af3ae408ba77e3fa390b188ee521d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsCenteredCriticalRateBound
    (q : ℕ) (F : ℕ → ℂ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ x : ℕ, 2 ≤ x →
      ‖F x‖ ≤ C * centeredTwistedPsiCriticalRate q x

/-- Quantitative analytic obligations associated with an exact explicit
formula square.  GRH is used only for the nontrivial-zero contribution; all
remaining estimates are unconditional fields of this proposition. -/
@[expose, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c92d30bafa5ada82dd8e51808c1d0c2f064c2aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
