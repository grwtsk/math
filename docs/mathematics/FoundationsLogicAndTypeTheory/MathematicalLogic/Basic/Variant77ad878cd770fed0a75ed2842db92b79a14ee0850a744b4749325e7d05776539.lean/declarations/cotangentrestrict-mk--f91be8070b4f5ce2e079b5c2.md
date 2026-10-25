# cotangentRestrict_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfd86b53-7310-f20c-b88f-509fcddf5488",
  "kind": "lemma",
  "lexical_name": "cotangentRestrict_mk",
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
  "slug": "cotangentrestrict-mk--f91be8070b4f5ce2e079b5c2",
  "source": {
    "blob": "46bb87bb1c79545b2527777f455d3a1d32fe6cf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 478,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f91be8070b4f5ce2e079b5c2012e328e54582dec920f7ea9707fde039750b2f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfd86b53-7310-f20c-b88f-509fcddf5488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cotangentRestrict_mk {σ : Type*} {u : σ → ι} (hu : Function.Injective u) (x : P.ker) :
    cotangentRestrict P hu (Extension.Cotangent.mk x) =
      fun j ↦ (aeval P.val) <| pderiv (u j) x.val := by
  ext j
  simp only [cotangentRestrict, LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
    Finsupp.lcomapDomain_apply, Finsupp.comapDomain_apply, Extension.cotangentComplex_mk]
  simp only [toExtension_Ring, P.cotangentSpaceBasis_repr_tmul, one_mul]

universe w' u' v'

variable {R' : Type u'} {S' : Type v'} {ι' : Type w'} [CommRing R'] [CommRing S'] [Algebra R' S']
variable (P' : Generators R' S' ι')
variable [Algebra R R'] [Algebra S S'] [Algebra R S'] [IsScalarTower R R' S'] [IsScalarTower R S S']

attribute [local instance] SMulCommClass.of_commMonoid

variable {P P'}

universe w'' u'' v''

open Extension

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46bb87bb1c79545b2527777f455d3a1d32fe6cf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
