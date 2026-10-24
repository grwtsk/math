# finiteMobiusController

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:378dc025e10623f3d40796398fe81cc6bc05b6b09fefcdc682faf73ea53594f5",
  "kind": "def",
  "lexical_name": "finiteMobiusController",
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
  "slug": "finitemobiuscontroller--18e5e76c1eb2fa12d3b680d7",
  "source": {
    "blob": "6d891bb6c475cc003707266cea8da1e62ab66880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18e5e76c1eb2fa12d3b680d7751b3a5ce6259f93c3460f3256d52d5407577b70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:378dc025e10623f3d40796398fe81cc6bc05b6b09fefcdc682faf73ea53594f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteMobiusController (X : ℕ) (p : H) : H :=
  (∑ n ∈ Finset.Icc 1 X,
    ((ArithmeticFunction.moebius n : ℂ) / (Real.sqrt (n : ℝ) : ℂ)) •
      causalShift (Real.log (n : ℝ)) p) -
    ((Real.sqrt (X : ℝ) * mobiusReciprocalSum X : ℝ) : ℂ) •
      causalShift (Real.log (X : ℝ)) p

/-- One-half evaluation of the logarithmic shift gives the same inverse-square-root weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d891bb6c475cc003707266cea8da1e62ab66880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
