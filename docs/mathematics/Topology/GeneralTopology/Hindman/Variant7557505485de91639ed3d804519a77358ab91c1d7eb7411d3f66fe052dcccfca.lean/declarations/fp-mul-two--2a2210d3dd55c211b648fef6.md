# FP.mul_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0eeb838e-d31b-552b-b4a4-aff927da6d28",
  "kind": "theorem",
  "lexical_name": "FP.mul_two",
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
  "slug": "fp-mul-two--2a2210d3dd55c211b648fef6",
  "source": {
    "blob": "397493198f8ec73d0c515fe5fd5c44d36f9cc4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 274,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2210d3dd55c211b648fef6ab50fd687e3ef0dc339efcc5f1e0dac33fc6d042",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eeb838e-d31b-552b-b4a4-aff927da6d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP.mul_two {M} [Semigroup M] (a : Stream' M) (i j : ℕ) (ij : i < j) :
    a.nth i * a.nth j ∈ FP a := by
  refine' FP_drop_subset_FP _ i _
  rw [← Stream'.head_drop]
  apply FP.cons
  rcases le_iff_exists_add.mp (Nat.succ_le_of_lt ij) with ⟨d, hd⟩
  -- Porting note: need to fix breakage of Set notation
  change _ ∈ FP _
  have := FP.singleton (a.drop i).tail d
  rw [Stream'.tail_eq_drop, Stream'.nth_drop, Stream'.nth_drop] at this
  convert this
  rw [hd, add_comm, Nat.succ_add, Nat.add_succ]
set_option linter.uppercaseLean3 false in
#align hindman.FP.mul_two Hindman.FP.mul_two
set_option linter.uppercaseLean3 false in
#align hindman.FS.add_two Hindman.FS.add_two

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `397493198f8ec73d0c515fe5fd5c44d36f9cc4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
