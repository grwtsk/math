# lifting_property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f8265cf-97f5-8281-d79d-e0428e356b46",
  "kind": "theorem",
  "lexical_name": "lifting_property",
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
  "slug": "lifting-property--f660a7e99f4373a7e25ed457",
  "source": {
    "blob": "a66ac3b32ed3beddbf54fc818e5d1f64f8598f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 268,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f660a7e99f4373a7e25ed457b58ff4938216162753cdd1be3d296183ea8d470e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8265cf-97f5-8281-d79d-e0428e356b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lifting_property {P} [AddCommGroup P] [Module R P] (f : M →ₗ[R] N)
    (hf : Function.Surjective f) (g : P →ₗ[R] N) :
    ∃ h : P →ₗ[R] M, f ∘ₗ h = g := by
  have ⟨m, compl⟩ := exists_isCompl (LinearMap.ker f)
  let e := (Submodule.quotientEquivOfIsCompl _ m compl).symm ≪≫ₗ f.quotKerEquivOfSurjective hf
  refine ⟨Submodule.subtype _ ∘ₗ e.symm.toLinearMap ∘ₗ g, LinearMap.ext fun x ↦ ?_⟩
  obtain ⟨z, eq⟩ := e.surjective (g x)
  simp only [LinearMap.comp_apply, ← eq, LinearEquiv.coe_coe, e.symm_apply_apply]
  simp [e]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a66ac3b32ed3beddbf54fc818e5d1f64f8598f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
