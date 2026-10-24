# mulSupport_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b0ef9e-4a0e-29af-37bd-403f2573ecb0",
  "kind": "theorem",
  "lexical_name": "mulSupport_finite",
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
  "slug": "mulsupport-finite--5b5a5c6b3ff7b0488c1e637c",
  "source": {
    "blob": "4b816975828aea26d5b9815ba628175d029a6e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 304,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b5a5c6b3ff7b0488c1e637c1d9421d601ac1e55a7f37b4fa691b7f1433af629",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b0ef9e-4a0e-29af-37bd-403f2573ecb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSupport_finite {x : K} (h_x_nezero : x ≠ 0) :
    (Function.mulSupport fun w : FinitePlace K ↦ w x).Finite := by
  rcases IsFractionRing.div_surjective (A := 𝓞 K) x with ⟨a, b, hb, rfl⟩
  simp_all only [ne_eq, div_eq_zero_iff, FaithfulSMul.algebraMap_eq_zero_iff, not_or, map_div₀]
  obtain ⟨ha, hb⟩ := h_x_nezero
  simp_rw [← RingOfIntegers.coe_eq_algebraMap]
  apply ((mulSupport_finite_int ha).union (mulSupport_finite_int hb)).subset
  intro w
  simp only [Function.mem_mulSupport, ne_eq, Set.mem_union]
  contrapose!
  simp +contextual only [ne_eq, one_ne_zero, not_false_eq_true, div_self, implies_true]

end FinitePlace

end NumberField

namespace IsDedekindDomain.HeightOneSpectrum

variable {K : Type*} [Field K] [NumberField K]

open NumberField.FinitePlace NumberField.RingOfIntegers
  NumberField.RingOfIntegers.HeightOneSpectrum
open scoped NumberField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b816975828aea26d5b9815ba628175d029a6e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
