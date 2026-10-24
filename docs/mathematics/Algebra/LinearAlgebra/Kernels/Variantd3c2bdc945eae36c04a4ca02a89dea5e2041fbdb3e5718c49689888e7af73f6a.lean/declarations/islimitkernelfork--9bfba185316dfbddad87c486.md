# isLimitKernelFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3485b57453aac9acf5ea380aec48ad7cdb884a408f8637485440ba0881f8cd7f",
  "kind": "def",
  "lexical_name": "isLimitKernelFork",
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
  "slug": "islimitkernelfork--9bfba185316dfbddad87c486",
  "source": {
    "blob": "0104f495e11dc3be9904c1880de18fa23b3c0c09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bfba185316dfbddad87c486979a181189bc8cbb280ea298fe018783924bdcc9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3485b57453aac9acf5ea380aec48ad7cdb884a408f8637485440ba0881f8cd7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitKernelFork (f : M ⟶ N) (g : N ⟶ P) (H : Function.Exact f.hom g.hom)
    (H₂ : Function.Injective f.hom) :
    IsLimit (KernelFork.ofι (f := g) f (by ext; exact H.apply_apply_eq_zero _)) := by
  refine IsLimit.ofIsoLimit (kernelIsLimit g) <|
    Cone.ext ((LinearEquiv.ofInjective _ H₂).trans
        (LinearEquiv.ofEq _ _ (LinearMap.exact_iff.mp H).symm)).toModuleIso.symm ?_
  · rintro ⟨⟩ <;> ext x <;> simp [kernelCone]

/-- The cokernel cocone induced by the projection onto the quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0104f495e11dc3be9904c1880de18fa23b3c0c09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
