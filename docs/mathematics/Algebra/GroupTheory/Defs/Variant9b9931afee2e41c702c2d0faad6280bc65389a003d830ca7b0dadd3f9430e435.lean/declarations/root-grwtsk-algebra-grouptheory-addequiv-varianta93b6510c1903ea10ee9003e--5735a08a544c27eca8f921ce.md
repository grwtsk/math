# _root_.GRWTSK.Algebra.GroupTheory.AddEquiv.Varianta93b6510c1903ea10ee9003e78bf0772f694c2f755125a244af6f5bbb6cae808.MulEquivClass.coe_symm_apply_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bd4ed5f-5304-70fc-8d1f-fdb9038739ea",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.AddEquiv.Varianta93b6510c1903ea10ee9003e78bf0772f694c2f755125a244af6f5bbb6cae808.MulEquivClass.coe_symm_apply_apply",
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
  "slug": "root-grwtsk-algebra-grouptheory-addequiv-varianta93b6510c1903ea10ee9003e--5735a08a544c27eca8f921ce",
  "source": {
    "blob": "b265b2bd8bafc3f51a39d2c84e20559059c64b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 386,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9b9931afee2e41c702c2d0faad6280bc65389a003d830ca7b0dadd3f9430e435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5735a08a544c27eca8f921ce52c55c94f5a9ab5f226fe18b4a6ee363e50b511d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant9b9931afee2e41c702c2d0faad6280bc65389a003d830ca7b0dadd3f9430e435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bd4ed5f-5304-70fc-8d1f-fdb9038739ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.AddEquiv.Varianta93b6510c1903ea10ee9003e78bf0772f694c2f755125a244af6f5bbb6cae808.MulEquivClass.coe_symm_apply_apply {α β} [Mul α] [Mul β] {F} [EquivLike F α β]
    [MulEquivClass F α β] (e : F) (x : α) :
    (e : α ≃* β).symm (e x) = x :=
  (e : α ≃* β).left_inv x

end symm

section simps

-- we don't hyperlink the note in the additive version, since that breaks syntax highlighting
-- in the whole file.

/-- See Note [custom simps projection] -/
@[to_additive /-- See Note [custom simps projection] -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant9b9931afee2e41c702c2d0faad6280bc65389a003d830ca7b0dadd3f9430e435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant9b9931afee2e41c702c2d0faad6280bc65389a003d830ca7b0dadd3f9430e435.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b265b2bd8bafc3f51a39d2c84e20559059c64b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
