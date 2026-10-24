# isSemisimple_of_squarefree_aeval_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:621cbacd-da2a-9ec3-d95a-a582442d59c3",
  "kind": "theorem",
  "lexical_name": "isSemisimple_of_squarefree_aeval_eq_zero",
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
  "slug": "issemisimple-of-squarefree-aeval-eq-zero--38d01c98c66f7db5f17e8902",
  "source": {
    "blob": "548a7037c0ca9fa892b20ff0c38edc81b4b5d899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38d01c98c66f7db5f17e890217dd9e57ff797dc25cb709076469598acd6ecccf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:621cbacd-da2a-9ec3-d95a-a582442d59c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSemisimple_of_squarefree_aeval_eq_zero {p : K[X]}
    (hp : Squarefree p) (hpf : aeval f p = 0) : f.IsSemisimple := by
  rw [← RingHom.mem_ker, ← AEval.annihilator_eq_ker_aeval (M := M), mem_annihilator,
      ← IsTorsionBy, ← isTorsionBySet_singleton_iff, isTorsionBySet_iff_is_torsion_by_span] at hpf
  let R := K[X] ⧸ Ideal.span {p}
  have : IsReduced R :=
    (Ideal.isRadical_iff_quotient_reduced _).mp (isRadical_iff_span_singleton.mp hp.isRadical)
  have : FiniteDimensional K R := (AdjoinRoot.powerBasis hp.ne_zero).finite
  have : IsArtinianRing R := .of_finite K R
  have : IsSemisimpleRing R := IsArtinianRing.isSemisimpleRing_of_isReduced R
  letI : Module R (AEval' f) := Module.IsTorsionBySet.module hpf
  let e : AEval' f →ₛₗ[Ideal.Quotient.mk (Ideal.span {p})] AEval' f :=
    { AddMonoidHom.id _ with map_smul' := fun _ _ ↦ rfl }
  exact (e.isSemisimpleModule_iff_of_bijective bijective_id).mpr inferInstance

variable [FiniteDimensional K M]

section

variable (hf : f.IsSemisimple)
include hf

/-- The minimal polynomial of a semisimple endomorphism is square free -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `548a7037c0ca9fa892b20ff0c38edc81b4b5d899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
