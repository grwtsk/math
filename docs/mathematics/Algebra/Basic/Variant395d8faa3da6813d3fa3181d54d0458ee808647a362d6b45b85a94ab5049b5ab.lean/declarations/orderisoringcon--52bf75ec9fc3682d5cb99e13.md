# orderIsoRingCon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2cdda06cac047c82fd511c19dee50c54156febfc2835c4df92efc60cafb8cb7",
  "kind": "def",
  "lexical_name": "orderIsoRingCon",
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
  "slug": "orderisoringcon--52bf75ec9fc3682d5cb99e13",
  "source": {
    "blob": "63e761518ef5d09fe5376e62617e4c0b1c331795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52bf75ec9fc3682d5cb99e13a8b57368d6358f3e03253cd7ce25e87cea68b104",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2cdda06cac047c82fd511c19dee50c54156febfc2835c4df92efc60cafb8cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoRingCon : TwoSidedIdeal R ≃o RingCon R where
  toFun := TwoSidedIdeal.ringCon
  invFun := .mk
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' {I J} := Iff.symm <| le_iff.trans ⟨fun h x y r => by rw [rel_iff] at r ⊢; exact h r,
    fun h x hx => by rw [SetLike.mem_coe, mem_iff] at hx ⊢; exact h hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e761518ef5d09fe5376e62617e4c0b1c331795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
