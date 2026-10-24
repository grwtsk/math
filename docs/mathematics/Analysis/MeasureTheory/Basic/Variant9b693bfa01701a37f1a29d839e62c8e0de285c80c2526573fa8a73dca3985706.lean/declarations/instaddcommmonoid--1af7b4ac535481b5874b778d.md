# instAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5a8176e96c8963ece693c049cbbc5b5b28948cfdd9c0ad4d23aa7b4eb1dfc7e",
  "kind": "instance",
  "lexical_name": "instAddCommMonoid",
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
  "slug": "instaddcommmonoid--1af7b4ac535481b5874b778d",
  "source": {
    "blob": "5550c98cde2070a8825dfc4d48cc41cebd2b815a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 300,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1af7b4ac535481b5874b778d0059f9b2cfddfe8d5ba0194efd1a1fdad01d4a9c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5a8176e96c8963ece693c049cbbc5b5b28948cfdd9c0ad4d23aa7b4eb1dfc7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommMonoid : AddCommMonoid (VectorMeasure α M) :=
  fast_instance% FunLike.addCommMonoid

@[deprecated (since := "2026-06-10")] alias coeFnAddMonoidHom := FunLike.coeAddMonoidHom

@[deprecated (since := "2026-06-10")] alias coeFnAddMonoidHom_apply := FunLike.coeAddMonoidHom_apply

@[deprecated (since := "2026-06-10")] alias coe_finsetSum := FunLike.coe_sum

end AddCommMonoid

section AddCommGroup

variable {M : Type*} [AddCommGroup M] [TopologicalSpace M] [IsTopologicalAddGroup M]

/-- The negative of a vector measure is a vector measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5550c98cde2070a8825dfc4d48cc41cebd2b815a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
