# smul_fixedBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd75c298-69dd-d1bc-0203-a07f49e7a4a5",
  "kind": "theorem",
  "lexical_name": "smul_fixedBy",
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
  "slug": "smul-fixedby--5863fbb6fdbf8384b3715264",
  "source": {
    "blob": "3142750e6825a5ad4b607b744e62eae3673d9281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 110,
    "path": "GRWTSK/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5863fbb6fdbf8384b3715264252f66b2b32a68e9524c2728184cec69a8180286",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd75c298-69dd-d1bc-0203-a07f49e7a4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_fixedBy (g h : G) :
    h • fixedBy α g = fixedBy α (h * g * h⁻¹) := by
  ext a
  simp_rw [Set.mem_smul_set_iff_inv_smul_mem, mem_fixedBy, mul_smul, smul_eq_iff_eq_inv_smul h]

end FixedPoints

section Pointwise

/-!
### `fixedBy` sets of the pointwise group action

The theorems below need the `Pointwise` scoped to be opened (using `open Pointwise`)
to be used effectively.
-/

/--
If a set `s : Set α` is in `fixedBy (Set α) g`, then all points of `s` will stay in `s` after being
moved by `g`.
-/
@[to_additive "If a set `s : Set α` is in `fixedBy (Set α) g`, then all points of `s` will stay in
`s` after being moved by `g`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3142750e6825a5ad4b607b744e62eae3673d9281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
