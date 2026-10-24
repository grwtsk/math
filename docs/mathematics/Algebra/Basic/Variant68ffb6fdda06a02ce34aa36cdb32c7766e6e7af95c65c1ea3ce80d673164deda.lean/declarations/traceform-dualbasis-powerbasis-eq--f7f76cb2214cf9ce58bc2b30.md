# traceForm_dualBasis_powerBasis_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e633d980-c643-c99e-d56f-853a5a896555",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ca344d1-67da-1d32-a6cf-d43e53d0e186",
  "kind": "lemma",
  "lexical_name": "traceForm_dualBasis_powerBasis_eq",
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
  "slug": "traceform-dualbasis-powerbasis-eq--f7f76cb2214cf9ce58bc2b30",
  "source": {
    "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 477,
    "path": "GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7f76cb2214cf9ce58bc2b30564ffa28c66bba98dc32822cffd8867c22adb4cb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca344d1-67da-1d32-a6cf-d43e53d0e186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_dualBasis_powerBasis_eq [FiniteDimensional K L] [Algebra.IsSeparable K L]
    (pb : PowerBasis K L) (i) :
    (Algebra.traceForm K L).dualBasis (traceForm_nondegenerate K L) pb.basis i =
      (minpolyDiv K pb.gen).coeff i / aeval pb.gen (derivative <| minpoly K pb.gen) := by
  classical
  apply ((Algebra.traceForm K L).toDual (traceForm_nondegenerate K L)).injective
  apply pb.basis.ext
  intro j
  simp only [BilinForm.toDual_def, BilinForm.apply_dualBasis_left]
  apply (algebraMap K (AlgebraicClosure K)).injective
  have := congr_arg (coeff · i) (sum_smul_minpolyDiv_eq_X_pow (AlgebraicClosure K)
    pb.adjoin_gen_eq_top (r := j) (pb.finrank.symm ▸ j.prop))
  simp only [AlgEquiv.toAlgHom_eq_coe, Polynomial.map_smul, map_div₀,
    map_pow, RingHom.coe_coe, AlgHom.coe_coe, finset_sum_coeff, coeff_smul, coeff_map, smul_eq_mul,
    coeff_X_pow, ← Fin.ext_iff, @eq_comm _ i] at this
  rw [PowerBasis.coe_basis]
  simp only [MonoidWithZeroHom.map_ite_one_zero, traceForm_apply]
  rw [← this, trace_eq_sum_embeddings (E := AlgebraicClosure K)]
  apply Finset.sum_congr rfl
  intro σ _
  simp only [map_mul, map_div₀, map_pow]
  ring

end DetNeZero

section isNilpotent

namespace Algebra

/-- The trace of a nilpotent element is nilpotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20176e2845712dce4896a19f08927dda14b9b47f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
