# IsNatCastApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:826e40233c463c211f2e267cc37f33ba0eddd7fa6279541b61ededa10de1275d",
  "kind": "class",
  "lexical_name": "IsNatCastApply",
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
  "slug": "isnatcastapply--823aff405676bfd6fdb77ece",
  "source": {
    "blob": "d9b9b006192de57bc2a2777f8649a1ef631848f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 193,
    "path": "GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:823aff405676bfd6fdb77ece1f9be648e01586581a0c4bb0a5f4d6b6a47bcf85",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:826e40233c463c211f2e267cc37f33ba0eddd7fa6279541b61ededa10de1275d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsNatCastApply (F : Type*) (α : outParam Type*) [FunLike F α α] [NatCast F] [SMul Nat α] where
  natCast_apply (n : Nat) (x : α) : (n : F) x = n • x

@[simp, grind =]
alias natCast_apply := IsNatCastApply.natCast_apply

/-- `IsIntCastApply F α` states for all `n : ℤ` and `x : α`, `(n : F) x = n • x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b9b006192de57bc2a2777f8649a1ef631848f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
