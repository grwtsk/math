# coe_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91a494f9-7f14-1c2d-5c21-0715038f06e2",
  "kind": "theorem",
  "lexical_name": "coe_symm",
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
  "slug": "coe-symm--d8aab7a2f43e7a2bedd70232",
  "source": {
    "blob": "a0baf38335c6d6d4b6421419c7bc3ad702e409ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8aab7a2f43e7a2bedd70232079ee1974ae91852baf733889f6237e2c5ec4b2c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91a494f9-7f14-1c2d-5c21-0715038f06e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_symm : (equiv : E ≃* E').symm = equiv.symm := rfl

initialize_simps_projections AddGroupExtension.Equiv (toFun → apply, invFun → symm_apply)
initialize_simps_projections Equiv (toFun → apply, invFun → symm_apply)

attribute [simps! symm_apply] AddGroupExtension.Equiv.symm
attribute [simps! symm_apply] symm

/-- The composition of monoid isomorphisms associated to equivalences of group extensions gives
    another equivalence. -/
@[to_additive (attr := simps!)
      "The composition of monoid isomorphisms associated to equivalences of additive group
      extensions gives another equivalence."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0baf38335c6d6d4b6421419c7bc3ad702e409ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
