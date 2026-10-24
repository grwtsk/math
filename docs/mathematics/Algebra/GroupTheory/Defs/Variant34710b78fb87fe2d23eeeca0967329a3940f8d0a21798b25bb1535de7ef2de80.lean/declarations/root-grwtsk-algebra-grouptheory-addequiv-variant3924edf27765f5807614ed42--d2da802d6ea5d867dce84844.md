# _root_.GRWTSK.Algebra.GroupTheory.AddEquiv.Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.MulEquivClass.apply_coe_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71795165-4b4b-df7f-181d-4d8959445caf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.AddEquiv.Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.MulEquivClass.apply_coe_symm_apply",
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
  "slug": "root-grwtsk-algebra-grouptheory-addequiv-variant3924edf27765f5807614ed42--d2da802d6ea5d867dce84844",
  "source": {
    "blob": "0842599c1bfe0fdb2246e11db7a4ec6570b6cb18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 390,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant34710b78fb87fe2d23eeeca0967329a3940f8d0a21798b25bb1535de7ef2de80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2da802d6ea5d867dce84844f250cd21497712f11b0d0fc05c418b1899ea1002",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant34710b78fb87fe2d23eeeca0967329a3940f8d0a21798b25bb1535de7ef2de80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71795165-4b4b-df7f-181d-4d8959445caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.AddEquiv.Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.MulEquivClass.apply_coe_symm_apply {α β} [Mul α] [Mul β] {F} [EquivLike F α β]
    [MulEquivClass F α β] (e : F) (x : β) :
    e ((e : α ≃* β).symm x) = x :=
  (e : α ≃* β).right_inv x

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant34710b78fb87fe2d23eeeca0967329a3940f8d0a21798b25bb1535de7ef2de80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant34710b78fb87fe2d23eeeca0967329a3940f8d0a21798b25bb1535de7ef2de80.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0842599c1bfe0fdb2246e11db7a4ec6570b6cb18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
