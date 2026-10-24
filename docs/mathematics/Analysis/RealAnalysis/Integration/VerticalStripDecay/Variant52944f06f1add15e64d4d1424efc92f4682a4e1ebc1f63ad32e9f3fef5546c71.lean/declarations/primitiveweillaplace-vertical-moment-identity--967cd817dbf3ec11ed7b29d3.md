# primitiveWeilLaplace_vertical_moment_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13f2da59-2d41-b743-84b5-5342463072d2",
  "kind": "lemma",
  "lexical_name": "primitiveWeilLaplace_vertical_moment_identity",
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
  "slug": "primitiveweillaplace-vertical-moment-identity--967cd817dbf3ec11ed7b29d3",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 338,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:967cd817dbf3ec11ed7b29d3d2842cb9a90cfaf693ae6c049badafb06556bb24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13f2da59-2d41-b743-84b5-5342463072d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma primitiveWeilLaplace_vertical_moment_identity
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) (n : ℕ) :
    (Complex.I * (t : ℂ)) ^ n *
        primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ)) =
      (-1 : ℂ) ^ n *
        ∫ x : ℝ,
          iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x := by
  induction n with
  | zero =>
      simp only [pow_zero, one_mul, iteratedDeriv_zero]
      exact primitiveWeilLaplace_vertical_eq_integral g sigma t
  | succ n ih =>
      calc
        (Complex.I * (t : ℂ)) ^ (n + 1) *
            primitiveWeilLaplace g
              ((sigma : ℂ) + Complex.I * (t : ℂ)) =
          (Complex.I * (t : ℂ)) *
            ((Complex.I * (t : ℂ)) ^ n *
              primitiveWeilLaplace g
                ((sigma : ℂ) + Complex.I * (t : ℂ))) := by ring
        _ = (Complex.I * (t : ℂ)) *
            ((-1 : ℂ) ^ n *
              ∫ x : ℝ,
                iteratedDeriv n
                    (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                  verticalOscillation t x) := by rw [ih]
        _ = (-1 : ℂ) ^ n *
            ((Complex.I * (t : ℂ)) *
              ∫ x : ℝ,
                iteratedDeriv n
                    (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                  verticalOscillation t x) := by ring
        _ = (-1 : ℂ) ^ n *
            (-∫ x : ℝ,
              iteratedDeriv (n + 1)
                  (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                verticalOscillation t x) := by
          rw [verticalOscillation_mul_iteratedDeriv_integral_succ]
        _ = (-1 : ℂ) ^ (n + 1) *
            ∫ x : ℝ,
              iteratedDeriv (n + 1)
                  (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                verticalOscillation t x := by
          rw [pow_succ]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
