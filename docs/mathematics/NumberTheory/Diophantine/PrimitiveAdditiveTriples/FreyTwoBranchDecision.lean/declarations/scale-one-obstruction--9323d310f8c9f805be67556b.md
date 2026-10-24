# scale_one_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e071355-2c7d-349e-1856-32ad65909390",
  "kind": "theorem",
  "lexical_name": "scale_one_obstruction",
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
  "slug": "scale-one-obstruction--9323d310f8c9f805be67556b",
  "source": {
    "blob": "99857f53e9a4104f4462ad5e2f0c21048b94df5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9323d310f8c9f805be67556b027c80373949c8cf496882e4e3c1e1ac9e98e2ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e071355-2c7d-349e-1856-32ad65909390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scale_one_obstruction (t : PrimitiveAdditiveTriple) (C : VariableChange ℚ)
    (hC : IsIntegral (LocalRing 2) (C • t.freyCurve))
    (hscale : scaleExponent (LocalRing 2) C=1) : (c6Shape t : ZMod 8)=2 := by
  letI := hC
  let W := WeierstrassCurve.integralModel (LocalRing 2) (C • t.freyCurve)
  obtain ⟨ε,hε⟩ := scale_one_unit C hscale
  have hF : (c6Shape t : LocalRing 2)= -2*(ε : LocalRing 2)^6*W.c₆ := by
    apply half_scale_cancellation (IsFractionRing.injective (LocalRing 2) ℚ)
      t.freyCurve C W (WeierstrassCurve.baseChange_integralModel_eq _ _) ε hε
    simpa only [map_intCast] using raw_c6 t
  have h := invariant_obstruction modEight W
    (scale_one_c4_unit t C hC hscale) ε (c6Shape t : LocalRing 2) hF
  simpa only [modEight_int] using h

/-- The same guards as the two previous chambers, in original ordered source coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99857f53e9a4104f4462ad5e2f0c21048b94df5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
