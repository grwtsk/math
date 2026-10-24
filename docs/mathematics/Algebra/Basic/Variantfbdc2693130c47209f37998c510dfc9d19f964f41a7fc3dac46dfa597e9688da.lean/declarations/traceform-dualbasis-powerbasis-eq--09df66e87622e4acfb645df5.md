# traceForm_dualBasis_powerBasis_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:097a1871-85d3-d455-8a94-e0c317504d22",
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
  "slug": "traceform-dualbasis-powerbasis-eq--09df66e87622e4acfb645df5",
  "source": {
    "blob": "152c6c70403a104029f09e17b870bde34c604eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 485,
    "path": "GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09df66e87622e4acfb645df515dc0af2214978dcb174cb76e84e6ef563c4c6a1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097a1871-85d3-d455-8a94-e0c317504d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–514.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152c6c70403a104029f09e17b870bde34c604eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
