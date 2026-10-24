# _root_.GRWTSK.Algebra.LinearAlgebra.IsLinearMap.Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.Function.Surjective.injective_linearMapComp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33b6204e-09c9-28bc-2b37-5b5ffb7dd9b4",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsLinearMap.Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.Function.Surjective.injective_linearMapComp_right",
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
  "slug": "root-grwtsk-algebra-linearalgebra-islinearmap-variantaea1c354ffc798aaa53--de1e18a3b015e23f0bd5b09d",
  "source": {
    "blob": "a025e05e7164be2b4072a74b03e49af6bb50ce10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 530,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de1e18a3b015e23f0bd5b09db3a307ef46d7404f662692cb73366bc6d3cdb75a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33b6204e-09c9-28bc-2b37-5b5ffb7dd9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.IsLinearMap.Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.Function.Surjective.injective_linearMapComp_right (hg : Surjective g) :
    Injective fun f : M₂ →ₛₗ[σ₂₃] M₃ ↦ f.comp g :=
  fun _ _ h ↦ ext <| hg.forall.2 (LinearMap.ext_iff.1 h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a025e05e7164be2b4072a74b03e49af6bb50ce10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
