# uniformContinuous_compareEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d73fa5a5-38f7-2efc-961a-7813f4f395ac",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_compareEquiv_symm",
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
  "slug": "uniformcontinuous-compareequiv-symm--f167d6515878b07394d2073d",
  "source": {
    "blob": "4a6d2bc946468c0d31f602763458da592da11e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f167d6515878b07394d2073d86ee89033fbc0322c6ddd7697410ce571afa0b4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73fa5a5-38f7-2efc-961a-7813f4f395ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem uniformContinuous_compareEquiv_symm : UniformContinuous (pkg.compareEquiv pkg').symm :=
  pkg'.uniformContinuous_compare pkg


open scoped Topology

/-Let `f : α → γ` be a continuous function between a uniform space `α` and a regular topological
space `γ`, and let `pkg, pkg'` be two abstract completions of `α`. Then
if for every point `a : pkg` the filter `f.map (coe⁻¹ (𝓝 a))` obtained by pushing forward with `f`
the preimage in `α` of `𝓝 a` tends to `𝓝 (f.extend a : β)`, then the comparison map
between `pkg` and `pkg'` composed with the extension of `f` to `pkg`` coincides with the
extension of `f` to `pkg'`. The situation is described in the following diagram, where the
two diagonal arrows are the extensions of `f` to the two different completions `pkg` and `pkg'`;
the statement of `compare_comp_eq_compare` is the commutativity of the right triangle.

```
`α^`=`pkg` ≅ `α^'`=`pkg'`   *here `≅` is `compare`*
  ∧     \        /
  |      \      /
  |       \    /
  |        V  ∨
 α ---f---> γ
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6d2bc946468c0d31f602763458da592da11e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
