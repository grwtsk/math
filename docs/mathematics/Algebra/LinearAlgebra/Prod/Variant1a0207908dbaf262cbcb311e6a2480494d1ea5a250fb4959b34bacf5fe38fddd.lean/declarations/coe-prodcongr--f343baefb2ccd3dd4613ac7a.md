# coe_prodCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4a36aed6c9fdedfb795a22c512c5e78668fe2a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 784,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f167618a-9e0e-2a69-8535-399c2578038c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86110eba-454c-c584-14f7-fd1770a3e6b2",
  "kind": "theorem",
  "lexical_name": "coe_prodCongr",
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
  "slug": "coe-prodcongr--f343baefb2ccd3dd4613ac7a",
  "source": {
    "blob": "f4a36aed6c9fdedfb795a22c512c5e78668fe2a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 784,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f343baefb2ccd3dd4613ac7ab59e709ff89838ba782247ece91efd3b8043251e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86110eba-454c-c584-14f7-fd1770a3e6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 784–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_prodCongr :
    (e₁.prodCongr e₂ : M × M₃ →ₗ[R] M₂ × M₄) = (e₁ : M →ₗ[R] M₂).prodMap (e₂ : M₃ →ₗ[R] M₄) :=
  rfl

end

section

variable [Semiring R]
variable [AddCommMonoid M] [AddCommMonoid M₂] [AddCommMonoid M₃] [AddCommGroup M₄]
variable {module_M : Module R M} {module_M₂ : Module R M₂}
variable {module_M₃ : Module R M₃} {module_M₄ : Module R M₄}
variable (e₁ : M ≃ₗ[R] M₂) (e₂ : M₃ ≃ₗ[R] M₄)

/-- Equivalence given by a block lower diagonal matrix. `e₁` and `e₂` are diagonal square blocks,
  and `f` is a rectangular block below the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant1a0207908dbaf262cbcb311e6a2480494d1ea5a250fb4959b34bacf5fe38fddd.lean#L784).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a36aed6c9fdedfb795a22c512c5e78668fe2a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
