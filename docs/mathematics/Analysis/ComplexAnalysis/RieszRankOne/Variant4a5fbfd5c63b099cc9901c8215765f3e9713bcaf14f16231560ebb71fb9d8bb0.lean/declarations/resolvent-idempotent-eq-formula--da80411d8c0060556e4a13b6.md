# resolvent_idempotent_eq_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ce8fc62-b64d-60f0-c441-171d74c1b95c",
  "kind": "theorem",
  "lexical_name": "resolvent_idempotent_eq_formula",
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
  "slug": "resolvent-idempotent-eq-formula--da80411d8c0060556e4a13b6",
  "source": {
    "blob": "a336dd5980d3457802f4e4ad090ac48dccbe38f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da80411d8c0060556e4a13b6ef7c961e4d153c4c945c243b35821b6e23f8abaa",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ce8fc62-b64d-60f0-c441-171d74c1b95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_idempotent_eq_formula
    (P : A) (z : K) (hP : IsIdempotentElem P)
    (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    resolvent P z = idempotentResolventFormula P z := by
  have hz := idempotent_mem_resolventSet P z hP hz0 hz1
  have hright := algebraMap_sub_idempotent_mul_formula P z hP hz0 hz1
  rw [spectrum.resolvent_eq hz]
  exact hz.unit.inv_eq_of_mul_eq_one_right hright

end Algebraic

/-! ## The isolating circle -/

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace ℂ H]

@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a336dd5980d3457802f4e4ad090ac48dccbe38f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
