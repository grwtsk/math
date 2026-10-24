# selected_binary_tangent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b15243b-2cf7-6b09-4ed0-a5438ba1cd08",
  "kind": "theorem",
  "lexical_name": "selected_binary_tangent",
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
  "slug": "selected-binary-tangent--98a488464c7e4ca9f8988c02",
  "source": {
    "blob": "fe8a7418fba3c54538099ed25754e7a6d20785af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98a488464c7e4ca9f8988c0262ee7d76df27f20fc61334ccdebab0d388480962",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b15243b-2cf7-6b09-4ed0-a5438ba1cd08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_binary_tangent (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    tangentPolynomial (selectedResidueModel t 2) =
      X^2+X+C ((integerModel t).a₂ : ZMod 2) := by
  unfold selectedResidueModel integerModel
  split_ifs with hfirst heven
  · simpa [FreyTwoSemistableChamber.integralModel,
      GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale.model,
      WeierstrassCurve.map, map_one, map_zero] using
      binary_tangent (((firstWitness t hfirst).k : ZMod 2)+
        4*((firstWitness t hfirst).n : ZMod 2))
        ((4*((firstWitness t hfirst).k : ZMod 2)+1)*((firstWitness t hfirst).n : ZMod 2))
  · simpa [FreyTwoEvenSummandChamber.integralModel,
      GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale.model,
      WeierstrassCurve.map, map_one, map_zero] using
      binary_tangent ((evenWitness t heven).k : ZMod 2) (-((evenWitness t heven).m : ZMod 2))
  · exact (hd.elim hfirst heven).elim

/-- Complete dyadic split criterion for the SAME selected minimal equation.
A factorable slope polynomial at a good or additive fiber does not suffice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8a7418fba3c54538099ed25754e7a6d20785af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
