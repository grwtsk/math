# quotientToInvariants_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b3ca492cb8c1caca6d22c1ed6f4345012370ac37760b9b438e8adf480604cc3",
  "kind": "abbrev",
  "lexical_name": "quotientToInvariants_lift",
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
  "slug": "quotienttoinvariants-lift--a5bc20cbfb8c7ec0bc86745e",
  "source": {
    "blob": "cb774905132b86e2f4146c7da38a6bf2f6a044a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 181,
    "path": "GRWTSK/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5bc20cbfb8c7ec0bc86745e1d23077a428c92d3466765ba574e4ad84ddb77ad",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b3ca492cb8c1caca6d22c1ed6f4345012370ac37760b9b438e8adf480604cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev quotientToInvariants_lift :
    Representation.IntertwiningMap (MonoidHom.comp (quotientToInvariants ρ S)
      (QuotientGroup.mk' _)) ρ := ⟨Submodule.subtype _, fun _ ↦ rfl⟩

end Subgroup
end Invariants

namespace linHom

open CategoryTheory Action

section Rep

variable {k : Type u} [CommRing k] {G : Type v} [Group G] {X Y : Rep.{w} k G}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb774905132b86e2f4146c7da38a6bf2f6a044a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
