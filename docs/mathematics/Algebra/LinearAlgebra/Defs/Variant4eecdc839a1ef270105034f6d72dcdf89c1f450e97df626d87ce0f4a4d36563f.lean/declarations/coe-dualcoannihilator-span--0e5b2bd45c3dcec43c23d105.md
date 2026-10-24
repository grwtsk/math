# coe_dualCoannihilator_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6017536-85f5-2c6c-27ff-a5cd08e782b9",
  "kind": "lemma",
  "lexical_name": "coe_dualCoannihilator_span",
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
  "slug": "coe-dualcoannihilator-span--0e5b2bd45c3dcec43c23d105",
  "source": {
    "blob": "b2b4b99b42a78c3acd78514799a65d7d57c3bd02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 470,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e5b2bd45c3dcec43c23d105a797955a98997ccd96f6d429e02cfc944caed74f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6017536-85f5-2c6c-27ff-a5cd08e782b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_dualCoannihilator_span (s : Set (Module.Dual R M)) :
    ((span R s).dualCoannihilator : Set M) = {x | ∀ f ∈ s, f x = 0} := by
  ext x
  have (φ : _) : x ∈ LinearMap.ker φ ↔ φ ∈ LinearMap.ker (Module.Dual.eval R M x) := by simp
  simp only [SetLike.mem_coe, mem_dualCoannihilator, Set.mem_ofPred_eq, ← LinearMap.mem_ker, this]
  exact span_le

end Submodule

open Module

namespace LinearMap

variable {R M₁ M₂ : Type*} [CommSemiring R]
variable [AddCommMonoid M₁] [Module R M₁] [AddCommMonoid M₂] [Module R M₂]
variable (f : M₁ →ₗ[R] M₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b4b99b42a78c3acd78514799a65d7d57c3bd02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
