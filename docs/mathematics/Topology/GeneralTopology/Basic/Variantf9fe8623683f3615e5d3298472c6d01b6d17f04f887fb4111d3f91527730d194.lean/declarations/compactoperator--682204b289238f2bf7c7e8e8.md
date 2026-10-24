# compactOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:115114b306f13fa594be4e50b387e957c6dc44f2ffdb55ebf2b7f86688e4958e",
  "kind": "def",
  "lexical_name": "compactOperator",
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
  "slug": "compactoperator--682204b289238f2bf7c7e8e8",
  "source": {
    "blob": "916f908a70db9327f1f6f7428f680c492bfad09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:682204b289238f2bf7c7e8e845f201168d937c8a8ffa823c796860568c07c297",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:115114b306f13fa594be4e50b387e957c6dc44f2ffdb55ebf2b7f86688e4958e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactOperator [Module R₁ M₁] [Module R₄ M₄] [ContinuousConstSMul R₄ M₄]
    [IsTopologicalAddGroup M₄] : Submodule R₄ (M₁ →SL[σ₁₄] M₄) where
  carrier := { f | IsCompactOperator f }
  add_mem' hf hg := hf.add hg
  zero_mem' := isCompactOperator_zero
  smul_mem' c _ hf := hf.smul c

end Operations

section Comp

variable {R₁ R₂ R₃ : Type*} [Semiring R₁] [Semiring R₂] [Semiring R₃] {σ₁₂ : R₁ →+* R₂}
  {σ₂₃ : R₂ →+* R₃} {M₁ M₂ M₃ : Type*} [TopologicalSpace M₁] [TopologicalSpace M₂]
  [TopologicalSpace M₃] [AddCommMonoid M₁] [Module R₁ M₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `916f908a70db9327f1f6f7428f680c492bfad09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
