# Pi.evalMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:512f542552960dfabe9a81898ac4a50a6374b63d3a48e256a39f6f96c7b6c066",
  "kind": "def",
  "lexical_name": "Pi.evalMonoidHom",
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
  "slug": "pi-evalmonoidhom--c29ad0864a194014dafd4756",
  "source": {
    "blob": "5ff8b220452cf4e18efc0efb8f487bb1d629cc3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 375,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c29ad0864a194014dafd47560054e1b2e85a4e71c0895a76c26b68820e9a9917",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:512f542552960dfabe9a81898ac4a50a6374b63d3a48e256a39f6f96c7b6c066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.evalMonoidHom (i : I) : (∀ i, f i) →* f i where
  toFun g := g i
  map_one' := Pi.one_apply i
  map_mul' _ _ := Pi.mul_apply _ _ i
#align pi.eval_monoid_hom Pi.evalMonoidHom
#align pi.eval_add_monoid_hom Pi.evalAddMonoidHom
#align pi.eval_monoid_hom_apply Pi.evalMonoidHom_apply
#align pi.eval_add_monoid_hom_apply Pi.evalAddMonoidHom_apply

/-- `Function.const` as a `MonoidHom`. -/
@[to_additive (attr := simps) "`Function.const` as an `AddMonoidHom`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8b220452cf4e18efc0efb8f487bb1d629cc3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
