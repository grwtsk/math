# coinvariantsKer_leftRegular_eq_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d31e7fd0-ce19-ae4c-d2e5-9bb7ee5bbbf2",
  "kind": "lemma",
  "lexical_name": "coinvariantsKer_leftRegular_eq_ker",
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
  "slug": "coinvariantsker-leftregular-eq-ker--2c0ac937ac216dd7deb0a744",
  "source": {
    "blob": "c42f33127de484be4610e97522cd05f9921dc350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0ac937ac216dd7deb0a7441c3f0f4ad689e0caff6be06c404739ca0012a929",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d31e7fd0-ce19-ae4c-d2e5-9bb7ee5bbbf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coinvariantsKer_leftRegular_eq_ker :
    Coinvariants.ker (Representation.leftRegular k G) =
      LinearMap.ker ((linearCombination k (fun _ => (1 : k))) ∘ₗ
        (MonoidAlgebra.coeffLinearEquiv k).toLinearMap) := by
  have := Fintype.ofFinite G
  refine le_antisymm (Submodule.span_le.2 ?_) fun x hx => ?_
  · rintro x ⟨⟨g, y⟩, rfl⟩
    simpa [linearCombination, sub_eq_zero, sum_fintype]
      using Finset.sum_bijective _ (Group.mulLeft_bijective g⁻¹) (by simp) (by lia)
  · have : x = x.coeff.sum (fun g r => .single g r - .single 1 r) := by
      ext g
      by_cases hg : g = 1
      · simp_all [linearCombination, sum_apply', MonoidAlgebra.coeff_finsuppSum]
      · simp_all [sum_apply', MonoidAlgebra.coeff_finsuppSum]
    rw [this]
    exact Submodule.finsuppSum_mem _ _ _ _ fun g _ =>
      Coinvariants.mem_ker_of_eq g (.single 1 (x.coeff g)) _ (by simp)

end Representation.FiniteCyclicGroup

namespace Rep.FiniteCyclicGroup

variable (k : Type u) {G : Type u} [CommRing k] [CommGroup G] [Fintype G] (A : Rep k G) (g : G)

namespace leftRegular

open Finsupp Representation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c42f33127de484be4610e97522cd05f9921dc350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
