# positiveResolvent_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41d49ee5-e7f1-77d8-8d60-13256656bddb",
  "kind": "theorem",
  "lexical_name": "positiveResolvent_sub",
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
  "slug": "positiveresolvent-sub--5423c0ce45b4e1c0d91d068f",
  "source": {
    "blob": "46b7354401615869a74b82e53e64512fddf54ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5423c0ce45b4e1c0d91d068f67ef918c849f101dd0726262a0507a4e895a754b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41d49ee5-e7f1-77d8-8d60-13256656bddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveResolvent_sub (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    positiveResolvent S α - positiveResolvent T α =
      positiveResolvent S α * (T - S) * positiveResolvent T α := by
  have hdiff : positiveShift T α - positiveShift S α = T - S := by
    unfold positiveShift
    abel
  rw [← hdiff, mul_sub, sub_mul, mul_assoc,
    positiveShift_mul_resolvent T hT α hα, mul_one,
    resolvent_mul_positiveShift S hS α hα, one_mul]

/-- Operator-norm perturbation at the same strictly positive parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46b7354401615869a74b82e53e64512fddf54ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
