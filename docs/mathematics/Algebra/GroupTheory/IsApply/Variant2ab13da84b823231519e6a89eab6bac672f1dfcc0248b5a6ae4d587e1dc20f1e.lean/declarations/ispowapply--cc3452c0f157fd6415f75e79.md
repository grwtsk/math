# IsPowApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f38825ae04436b575fb8ff16264cd59cea2afe4b8be774d2a8c98bff9a27113",
  "kind": "class",
  "lexical_name": "IsPowApply",
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
  "slug": "ispowapply--cc3452c0f157fd6415f75e79",
  "source": {
    "blob": "d9b9b006192de57bc2a2777f8649a1ef631848f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 179,
    "path": "GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc3452c0f157fd6415f75e7927808ad8d21a3675998622ed1c00d02a27a73380",
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

Occurrence: `declaration:2f38825ae04436b575fb8ff16264cd59cea2afe4b8be774d2a8c98bff9a27113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsPowApply (M F : Type*) (α β : outParam Type*) [FunLike F α β] [Pow β M] [Pow F M] where
  pow_apply (f : F) (n : M) (x : α) : (f ^ n) x = (f x) ^ n

-- Note that `smul_apply` is defined already, so we create an alias using `to_additive`,
-- but we do not declare it a `simp` lemma
@[to_additive existing smul_apply] alias pow_apply := IsPowApply.pow_apply

attribute [simp, grind =] pow_apply

end SMul

section Cast

/-- `IsNatCastApply F α` states for all `n : ℕ` and `x : α`, `(n : F) x = n • x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b9b006192de57bc2a2777f8649a1ef631848f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
