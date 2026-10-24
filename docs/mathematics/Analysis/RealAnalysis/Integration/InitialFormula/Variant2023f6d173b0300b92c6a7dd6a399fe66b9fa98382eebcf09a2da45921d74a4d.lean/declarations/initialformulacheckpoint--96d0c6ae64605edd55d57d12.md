# InitialFormulaCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ede45438c75bb446746c93813184dfc37ab5b192adec217f08fae0bb3366e79",
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
  "slug": "initialformulacheckpoint--96d0c6ae64605edd55d57d12",
  "source": {
    "blob": "754ccac173094178192c7e051096f1ff06033325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 639,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96d0c6ae64605edd55d57d12b71eb585276ab8dfbf83b1c2d8eeaaffe4c64de9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ede45438c75bb446746c93813184dfc37ab5b192adec217f08fae0bb3366e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–654.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754ccac173094178192c7e051096f1ff06033325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
