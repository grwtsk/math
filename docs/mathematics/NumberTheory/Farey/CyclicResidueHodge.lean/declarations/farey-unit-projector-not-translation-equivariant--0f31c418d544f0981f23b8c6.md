# farey_unit_projector_not_translation_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8168bc7c-1b83-d104-1d1f-bd880c54cd59",
  "kind": "theorem",
  "lexical_name": "farey_unit_projector_not_translation_equivariant",
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
  "slug": "farey-unit-projector-not-translation-equivariant--0f31c418d544f0981f23b8c6",
  "source": {
    "blob": "b01203327e2320a57ccf8cc5cf5dd216d0cbfe1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f31c418d544f0981f23b8c6ea3f31d1ec27907a9f14130d9ecd3d6cc1bca0ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/CyclicResidueHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8168bc7c-1b83-d104-1d1f-bd880c54cd59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem farey_unit_projector_not_translation_equivariant :
    unitPart 4 (translateUp 4 fareyNonunitPointMass) ≠
      translateUp 4 (unitPart 4 fareyNonunitPointMass) := by
  intro heq
  have h := congrFun heq (1 : ZMod 4)
  have hone : IsUnit (1 : ZMod 4) := isUnit_one
  have htwo : ¬ IsUnit (2 : ZMod 4) :=
    GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.two_not_isUnit_zmod_four
  have hshift : (1 : ZMod 4) + 1 = (2 : ZMod 4) := by norm_num
  simp [unitPart, translateUp, hshift, hone, htwo,
    fareyNonunitPointMass_eq_indicator] at h

end GRWTSK.NumberTheory.Farey.CyclicResidueHodge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/CyclicResidueHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b01203327e2320a57ccf8cc5cf5dd216d0cbfe1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
