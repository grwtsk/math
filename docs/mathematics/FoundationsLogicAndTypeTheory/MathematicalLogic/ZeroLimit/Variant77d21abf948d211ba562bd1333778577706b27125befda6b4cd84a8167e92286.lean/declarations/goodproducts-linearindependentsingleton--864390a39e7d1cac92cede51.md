# GoodProducts.linearIndependentSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12569b5c0686146b83ab1d51ed8abb6c7b9f4d11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9566d26-040b-5faf-7c40-6c4fefa8a264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0697800b-c896-9ca4-da8f-30b90e39cdca",
  "kind": "theorem",
  "lexical_name": "GoodProducts.linearIndependentSingleton",
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
  "slug": "goodproducts-linearindependentsingleton--864390a39e7d1cac92cede51",
  "source": {
    "blob": "12569b5c0686146b83ab1d51ed8abb6c7b9f4d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864390a39e7d1cac92cede51ed6d88ae9a67f63a415ffa1e5901ea62c258c747",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0697800b-c896-9ca4-da8f-30b90e39cdca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GoodProducts.linearIndependentSingleton {I} [LinearOrder I] :
    LinearIndependent ℤ (eval ({fun _ ↦ false} : Set (I → Bool))) :=
  .of_subsingleton default <| by simp [eval, Products.eval, Products.nil, default]

end Zero

variable [WellFoundedLT I]

section Limit
/-!
## The limit case of the induction

We relate linear independence in `LocallyConstant (π C (ord I · < o')) ℤ` with linear independence
in `LocallyConstant C ℤ`, where `contained C o` and `o' < o`.

When `o` is a limit ordinal, we prove that the good products in `LocallyConstant C ℤ` are linearly
independent if and only if a certain directed union is linearly independent. Each term in this
directed union is in bijection with the good products w.r.t. `π C (ord I · < o')` for an ordinal
`o' < o`, and these are linearly independent by the inductive hypothesis.

### Main definitions

* `GoodProducts.smaller` is the image of good products coming from a smaller ordinal.

* `GoodProducts.range_equiv`: The image of the `GoodProducts` in `C` is equivalent to the union of
  `smaller C o'` over all ordinals `o' < o`.

### Main results

* `Products.limitOrdinal`: for `o` a limit ordinal such that `contained C o`, a product `l` is good
  w.r.t. `C` iff it there exists an ordinal `o' < o` such that `l` is good w.r.t.
  `π C (ord I · < o')`.

* `GoodProducts.linearIndependent_iff_union_smaller` is the result mentioned above, that the good
  products are linearly independent iff a directed union is.
-/

namespace GoodProducts

/--
The image of the `GoodProducts` for `π C (ord I · < o)` in `LocallyConstant C ℤ`. The name `smaller`
refers to the setting in which we will use this, when we are mapping in `GoodProducts` from a
smaller set, i.e. when `o` is a smaller ordinal than the one `C` is "contained" in.
-/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12569b5c0686146b83ab1d51ed8abb6c7b9f4d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
