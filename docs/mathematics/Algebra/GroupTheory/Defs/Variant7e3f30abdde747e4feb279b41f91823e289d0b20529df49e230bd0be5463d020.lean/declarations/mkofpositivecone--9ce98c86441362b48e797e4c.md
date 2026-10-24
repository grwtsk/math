# mkOfPositiveCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76cd94a94cfc71522267daf25aa678bca8da3424528fbf31a8df623f3d1565fd",
  "kind": "def",
  "lexical_name": "mkOfPositiveCone",
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
  "slug": "mkofpositivecone--9ce98c86441362b48e797e4c",
  "source": {
    "blob": "e430c7055ce5983bb2f97e897371120552a976eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1221,
    "line": 1201,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant7e3f30abdde747e4feb279b41f91823e289d0b20529df49e230bd0be5463d020.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ce98c86441362b48e797e4ce7655f391e3776def1de6833f3fb35c917fc31d7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant7e3f30abdde747e4feb279b41f91823e289d0b20529df49e230bd0be5463d020.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76cd94a94cfc71522267daf25aa678bca8da3424528fbf31a8df623f3d1565fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1201–1221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOfPositiveCone {α : Type*} [AddCommGroup α] (C : PositiveCone α) : OrderedAddCommGroup α :=
  { ‹AddCommGroup α› with
    le := fun a b => C.nonneg (b - a),
    lt := fun a b => C.pos (b - a),
    lt_iff_le_not_le := fun a b => by simp [C.pos_iff],
    le_refl := fun a => by simp [C.zero_nonneg],
    le_trans := fun a b c nab nbc => by simpa [← sub_add_sub_cancel] using C.add_nonneg nbc nab,
    le_antisymm := fun a b nab nba =>
      eq_of_sub_eq_zero <| C.nonneg_antisymm nba (by rwa [neg_sub]),
    add_le_add_left := fun a b nab c => by simpa using nab }
#align ordered_add_comm_group.mk_of_positive_cone OrderedAddCommGroup.mkOfPositiveCone

end OrderedAddCommGroup

namespace LinearOrderedAddCommGroup

open AddCommGroup

/-- Construct a `LinearOrderedAddCommGroup` by
designating a positive cone in an existing `AddCommGroup`
such that for every `a`, either `a` or `-a` is non-negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant7e3f30abdde747e4feb279b41f91823e289d0b20529df49e230bd0be5463d020.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant7e3f30abdde747e4feb279b41f91823e289d0b20529df49e230bd0be5463d020.lean#L1201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e430c7055ce5983bb2f97e897371120552a976eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
