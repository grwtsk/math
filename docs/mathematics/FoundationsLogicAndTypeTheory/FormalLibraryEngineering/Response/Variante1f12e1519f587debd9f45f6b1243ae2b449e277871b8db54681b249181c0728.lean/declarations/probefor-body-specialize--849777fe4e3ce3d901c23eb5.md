# probeFor_body_specialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05157b36-5685-71cb-9c8b-b1e311e6b1e7",
  "kind": "theorem",
  "lexical_name": "probeFor_body_specialize",
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
  "slug": "probefor-body-specialize--849777fe4e3ce3d901c23eb5",
  "source": {
    "blob": "cccb4039dc0f871b97a118e81bc5316902aebfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:849777fe4e3ce3d901c23eb51c8474b6c71062ba2049ca611e770a8c76a545e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05157b36-5685-71cb-9c8b-b1e311e6b1e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probeFor_body_specialize (L : LogicCode S) (KY KP : QuantifierCode S) (A i : Expr S) :
    (((R.rename Nat.succ).recoverLiftBody (L.rename Nat.succ) (KY.rename Nat.succ) (KP.rename
      Nat.succ)
      ((R.probe.lifting.rename Nat.succ).project (.var 0)) (i.rename Nat.succ)).subst
      (Expr.liftSub (Expr.single (R.probe.lifting.inject A)))) =
    R.recoverLiftBody L KY KP (R.probe.lifting.project (R.probe.lifting.inject A)) i := by
  simp only [recoverLiftBody_subst,instantiate_raise,LogicCode.instantiate_raise,
    QuantifierCode.instantiate_raise,PositiveDataWrapper.project_subst,
    PositiveDataWrapper.instantiate_raise,Expr.subst_lift_single,Expr.subst,Expr.single]

namespace Formed
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J k p n g j h : Set S} {R : RelationalCode S}
    (H : R.Formed L I J k p n g j h) (KY : QuantifierRoute L.witnesses C L.base j)
    (KP : QuantifierRoute L.witnesses C L.base h)
include H
/-- Uniform-probe evaluation before access recovery. No non-dummy assumption is
needed for the uniform lambda's beta and wrapper cancellations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccb4039dc0f871b97a118e81bc5316902aebfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
