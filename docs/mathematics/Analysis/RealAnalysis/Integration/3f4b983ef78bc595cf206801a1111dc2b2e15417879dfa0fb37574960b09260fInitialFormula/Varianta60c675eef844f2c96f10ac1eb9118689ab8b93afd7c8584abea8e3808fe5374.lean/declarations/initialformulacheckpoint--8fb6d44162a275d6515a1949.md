# InitialFormulaCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:371a433ef72115a9c27f08407b1fdf32bdde4031b34f9dbf51c99a6b5e1b0237",
  "kind": "def",
  "lexical_name": "InitialFormulaCheckpoint",
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
  "slug": "initialformulacheckpoint--8fb6d44162a275d6515a1949",
  "source": {
    "blob": "9fa70a130343044ca3fb1a14286c77206441f14c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 645,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fb6d44162a275d6515a19495adcc27634a4a31b99d0aed21f067421fcc5cc3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:371a433ef72115a9c27f08407b1fdf32bdde4031b34f9dbf51c99a6b5e1b0237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InitialFormulaCheckpoint : Prop :=
  ∀ s : ℂ, 1 < s.re →
    IntegrableOn
      (fun A : ℝ ↦
        Complex.exp (-s * A) *
          (weightedSource A : ℂ))
      (Ioi 1) ∧
    Summable
      (fun o : ZeroOccurrence ↦
        equation20Summand (shiftedValue o) s) ∧
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (weightedSource A : ℂ)) =
      ∑' o : ZeroOccurrence,
        equation20Summand (shiftedValue o) s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa70a130343044ca3fb1a14286c77206441f14c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
