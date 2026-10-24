# raw_additive_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e480de5b-3129-4d39-c39d-177eb5df699b",
  "kind": "theorem",
  "lexical_name": "raw_additive_iff",
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
  "slug": "raw-additive-iff--c1a35a971f44daa095eb2c86",
  "source": {
    "blob": "99857f53e9a4104f4462ad5e2f0c21048b94df5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 255,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a35a971f44daa095eb2c86d04dec0562f56469f88e0f2412935a5786961506",
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

Occurrence: `result:e480de5b-3129-4d39-c39d-177eb5df699b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_additive_iff (t : PrimitiveAdditiveTriple) :
    HasAdditiveReduction (LocalRing 2) t.freyCurve ↔ ¬ Descends t := by
  constructor
  · intro h
    exact (raw_minimal_iff t).mp h.toIsMinimal
  · intro hn
    refine ⟨(raw_minimal_iff t).mpr hn,?_,?_⟩
    · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
        (localizedModel t 2).Δ).mpr (localized_delta_nonunit_at_two t)
      simpa only [← localizedModel_baseChange t 2,
        WeierstrassCurve.baseChange,WeierstrassCurve.map_Δ] using hv
    · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
        (localizedModel t 2).c₄).mpr (localized_c4_nonunit_at_two t)
      simpa only [← localizedModel_baseChange t 2,
        WeierstrassCurve.baseChange,WeierstrassCurve.map_c₄] using hv

/-- A concrete rational coordinate change selected by finite original-source guards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99857f53e9a4104f4462ad5e2f0c21048b94df5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
