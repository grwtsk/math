# instStarModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c96ae65679ef9908132f7c4175395eb76d4ace34109e8dccb95d17f08d3b9de3",
  "kind": "instance",
  "lexical_name": "instStarModule",
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
  "slug": "inststarmodule--3add81807f3b9b8af7239bfa",
  "source": {
    "blob": "0044b82b69d1836bf5ca1c42678e77b2ef939148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 417,
    "path": "GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3add81807f3b9b8af7239bfae5fe5593f0c9e84a7c5a5a96684072c1f975d6c9",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c96ae65679ef9908132f7c4175395eb76d4ace34109e8dccb95d17f08d3b9de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instStarModule : StarModule 𝕜 𝓜(𝕜, A) :=
  { DoubleCentralizer.instStarAddMonoid (𝕜 := 𝕜) (A := A) with
    star_smul _ _ := by ext <;> exact star_smul _ _ }

end Star

/-!
### Coercion from an algebra into its multiplier algebra
-/

variable (𝕜) in
/-- The natural coercion of `A` into `𝓜(𝕜, A)` given by sending `a : A` to the pair of linear
maps `Lₐ Rₐ : A →L[𝕜] A` given by left- and right-multiplication by `a`, respectively.

Warning: if `A = 𝕜`, then this is a coercion which is not definitionally equal to the
`algebraMap 𝕜 𝓜(𝕜, 𝕜)` coercion, but these are propositionally equal. See
`DoubleCentralizer.coe_eq_algebraMap` below. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0044b82b69d1836bf5ca1c42678e77b2ef939148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
