# IsSFiniteKernel.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:840aa6da746d29a5538c1499a06e20e8fdd83d4e7acb8c0f2ca1e9611d95bdba",
  "kind": "instance",
  "lexical_name": "IsSFiniteKernel.map",
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
  "slug": "issfinitekernel-map--ef347b937ebcec7daca93524",
  "source": {
    "blob": "d4ed952dc3f155e3f9de5f6cf0480a765236331d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 595,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef347b937ebcec7daca93524516b83b47c12130314aa7a9fe6c261f41a1fe5bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:840aa6da746d29a5538c1499a06e20e8fdd83d4e7acb8c0f2ca1e9611d95bdba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsSFiniteKernel.map (κ : kernel α β) [IsSFiniteKernel κ] (hf : Measurable f) :
    IsSFiniteKernel (map κ f hf) :=
  ⟨⟨fun n => kernel.map (seq κ n) f hf, inferInstance, (sum_map_seq κ hf).symm⟩⟩
#align probability_theory.kernel.is_s_finite_kernel.map ProbabilityTheory.kernel.IsSFiniteKernel.map

/-- Pullback of a kernel, such that for each set s `comap κ g hg c s = κ (g c) s`.
We include measurability in the assumptions instead of using junk values
to make sure that typeclass inference can infer that the `comap` of a Markov kernel
is again a Markov kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4ed952dc3f155e3f9de5f6cf0480a765236331d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
