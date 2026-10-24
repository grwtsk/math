# exists_mem_finset_approx'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d9b2d86-8395-0f86-ea18-d4c26d44432c",
  "kind": "theorem",
  "lexical_name": "exists_mem_finset_approx'",
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
  "slug": "exists-mem-finset-approx--45b1ab58d6e99e02200782b1",
  "source": {
    "blob": "9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 282,
    "path": "GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b1ab58d6e99e02200782b10a823c200046a69b18aaa777bcc03658d8b86056",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9b2d86-8395-0f86-ea18-d4c26d44432c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_finset_approx' (h : Algebra.IsAlgebraic R L) (a : S) {b : S} (hb : b ≠ 0) :
    ∃ q : S,
      ∃ r ∈ finsetApprox bS adm, abv (Algebra.norm R (r • a - q * b)) < abv (Algebra.norm R b) := by
  have inj : Function.Injective (algebraMap R L) := by
    rw [IsScalarTower.algebraMap_eq R S L]
    exact (IsIntegralClosure.algebraMap_injective S R L).comp bS.algebraMap_injective
  obtain ⟨a', b', hb', h⟩ := IsIntegralClosure.exists_smul_eq_mul h inj a hb
  obtain ⟨q, r, hr, hqr⟩ := exists_mem_finsetApprox bS adm a' hb'
  refine' ⟨q, r, hr, _⟩
  refine'
    lt_of_mul_lt_mul_left _ (show 0 ≤ abv (Algebra.norm R (algebraMap R S b')) from abv.nonneg _)
  refine'
    lt_of_le_of_lt (le_of_eq _)
      (mul_lt_mul hqr le_rfl (abv.pos ((Algebra.norm_ne_zero_iff_of_basis bS).mpr hb))
        (abv.nonneg _))
  rw [← abv.map_mul, ← MonoidHom.map_mul, ← abv.map_mul, ← MonoidHom.map_mul, ← Algebra.smul_def,
    smul_sub b', sub_mul, smul_comm, h, mul_comm b a', Algebra.smul_mul_assoc r a' b,
    Algebra.smul_mul_assoc b' q b]
#align class_group.exists_mem_finset_approx' ClassGroup.exists_mem_finset_approx'

end Real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
