# CanonicallyOrderedAddMonoid.toAddCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78508ba69cab02e6a9832ee164d58569c70df89a2c64d297f86c60b076b64867",
  "kind": "def",
  "lexical_name": "CanonicallyOrderedAddMonoid.toAddCancelCommMonoid",
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
  "slug": "canonicallyorderedaddmonoid-toaddcancelcommmonoid--5ff35b6c7bb5ea42ad31b2ab",
  "source": {
    "blob": "3d803ac09a30400e63ef4ac419cf420b0633723d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 402,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ff35b6c7bb5ea42ad31b2ab5d4c454bfede11f2ebdca48be37c214c126fe528",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78508ba69cab02e6a9832ee164d58569c70df89a2c64d297f86c60b076b64867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CanonicallyOrderedAddMonoid.toAddCancelCommMonoid : AddCancelCommMonoid α :=
  { (by infer_instance : AddCommMonoid α) with
    add_left_cancel := fun a b c h => by
      simpa only [add_tsub_cancel_left] using congr_arg (fun x => x - a) h }
#align canonically_ordered_add_monoid.to_add_cancel_comm_monoid CanonicallyOrderedAddMonoid.toAddCancelCommMonoid

end Contra

end CanonicallyOrderedAddMonoid

/-! ### Lemmas in a linearly canonically ordered monoid. -/


section CanonicallyLinearOrderedAddMonoid

variable [CanonicallyLinearOrderedAddMonoid α] [Sub α] [OrderedSub α] {a b c d : α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d803ac09a30400e63ef4ac419cf420b0633723d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
