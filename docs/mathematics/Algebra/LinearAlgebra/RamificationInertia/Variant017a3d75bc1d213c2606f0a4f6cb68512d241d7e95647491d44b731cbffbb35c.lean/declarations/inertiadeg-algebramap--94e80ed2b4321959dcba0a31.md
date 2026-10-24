# inertiaDeg_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "418ceefcf4d9849fd851b34c138c5303e79a1b14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5e712a6-2911-b165-ba7f-8d20a2fc0dbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1af9a523-aef7-b38e-f914-8846591eb268",
  "kind": "theorem",
  "lexical_name": "inertiaDeg_algebraMap",
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
  "slug": "inertiadeg-algebramap--94e80ed2b4321959dcba0a31",
  "source": {
    "blob": "418ceefcf4d9849fd851b34c138c5303e79a1b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 209,
    "path": "GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94e80ed2b4321959dcba0a31410bbbe2c601b2fee985703836ed0ae0b82821d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af9a523-aef7-b38e-f914-8846591eb268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaDeg_algebraMap [Algebra R S] [Algebra (R ⧸ p) (S ⧸ P)]
    [IsScalarTower R (R ⧸ p) (S ⧸ P)] [hp : p.IsMaximal] :
    inertiaDeg (algebraMap R S) p P = finrank (R ⧸ p) (S ⧸ P) := by
  nontriviality S ⧸ P using inertiaDeg_of_subsingleton, finrank_zero_of_subsingleton
  have := comap_eq_of_scalar_tower_quotient (algebraMap (R ⧸ p) (S ⧸ P)).injective
  rw [inertiaDeg, dif_pos this]
  congr
  refine' Algebra.algebra_ext _ _ fun x' => Quotient.inductionOn' x' fun x => _
  change Ideal.Quotient.lift p _ _ (Ideal.Quotient.mk p x) = algebraMap _ _ (Ideal.Quotient.mk p x)
  rw [Ideal.Quotient.lift_mk, ← Ideal.Quotient.algebraMap_eq P, ← IsScalarTower.algebraMap_eq,
    ← Ideal.Quotient.algebraMap_eq, ← IsScalarTower.algebraMap_apply]
#align ideal.inertia_deg_algebra_map Ideal.inertiaDeg_algebraMap

end DecEq

section FinrankQuotientMap

open scoped BigOperators

open scoped nonZeroDivisors

variable [Algebra R S]

variable {K : Type*} [Field K] [Algebra R K] [hRK : IsFractionRing R K]

variable {L : Type*} [Field L] [Algebra S L] [IsFractionRing S L]

variable {V V' V'' : Type*}

variable [AddCommGroup V] [Module R V] [Module K V] [IsScalarTower R K V]

variable [AddCommGroup V'] [Module R V'] [Module S V'] [IsScalarTower R S V']

variable [AddCommGroup V''] [Module R V'']

variable (K)

/-- Let `V` be a vector space over `K = Frac(R)`, `S / R` a ring extension
and `V'` a module over `S`. If `b`, in the intersection `V''` of `V` and `V'`,
is linear independent over `S` in `V'`, then it is linear independent over `R` in `V`.

The statement we prove is actually slightly more general:
 * it suffices that the inclusion `algebraMap R S : R → S` is nontrivial
 * the function `f' : V'' → V'` doesn't need to be injective
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418ceefcf4d9849fd851b34c138c5303e79a1b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
