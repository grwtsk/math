# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa32eec9c8b12e6365334773e02eee0a2021cb328c04b0e96afadc9182b24d68",
  "kind": "def",
  "lexical_name": "AddedClaim",
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
  "slug": "addedclaim--bdebcf91da6698a1c6eb65e2",
  "source": {
    "blob": "d05421754eb13396ae2cb363b80bd070dd9a0c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/Interfaces/PortFiberAreaMean.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdebcf91da6698a1c6eb65e217a04b1c1f73501fa04b61f86767ade24869ba7a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaMean.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa32eec9c8b12e6365334773e02eee0a2021cb328c04b0e96afadc9182b24d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .polarBinding => ∀ (f : ℂ → ℂ) (R : ℝ),
      (∫ z in closedBall (0 : ℂ) R, f z) =
        ∫ p : ℝ × ℝ in Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi,
          p.1 • f (Complex.polarCoord.symm p)
  | .diskMean => ∀ (f : ℂ → ℂ) (c : ℂ) (R : ℝ), 0 < R →
      DifferentiableOn ℂ f (closedBall c R) →
      (∫ z in closedBall c R, f z) = (Real.pi * R ^ 2) • f c
  | .finiteSquare => ∀ (f : ℂ → ℂ) (c : ℂ) (R : ℝ),
      DifferentiableOn ℂ f (closedBall c R) →
      IntegrableOn (fun z => f z * f z) (closedBall c R) ∧
        IntegrableOn (fun z => ‖f z‖ ^ 2) (closedBall c R)
  | .areaEstimate => ∀ (f : ℂ → ℂ) (c : ℂ) (R : ℝ), 0 < R →
      DifferentiableOn ℂ f (closedBall c R) →
      (Real.pi * R ^ 2) * ‖f c‖ ^ 2 ≤ ∫ z in closedBall c R, ‖f z‖ ^ 2
  | .sectionBinding => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
      (s : BundleSection (Cocycle.identity D) hOpen),
      (Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2 ≤
        ∫ z in closedBall W.center W.radius, ‖ambientRepresentative D.X s.value z‖ ^ 2
  | .parameterBoundaries =>
      (Complex.I * Complex.I ≠ (‖Complex.I‖ ^ 2 : ℂ)) ∧
      ¬ (‖(1 : ℂ)‖ ^ 2 ≤ (Real.pi * (0 : ℝ) ^ 2)⁻¹ *
        (∫ _z in closedBall (0 : ℂ) 0, ‖(1 : ℂ)‖ ^ 2))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaMean.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaMean.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05421754eb13396ae2cb363b80bd070dd9a0c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
