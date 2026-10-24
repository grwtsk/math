# isUnit_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9954c560-d6fb-fd3f-e308-bb4767984a90",
  "kind": "theorem",
  "lexical_name": "isUnit_norm",
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
  "slug": "isunit-norm--54e71522bdbfd51dfa489a1a",
  "source": {
    "blob": "fc7acfb7bbf33dbc728135d8c265804131b87c3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e71522bdbfd51dfa489a1a9c8dfd84548d366a5c030da98ed877c950127b72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9954c560-d6fb-fd3f-e308-bb4767984a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_norm [CharZero K] {x : 𝓞 F} : IsUnit (norm K x) ↔ IsUnit x := by
  letI : Algebra K (AlgebraicClosure K) := AlgebraicClosure.instAlgebra K
  let L := normalClosure K F (AlgebraicClosure F)
  haveI : FiniteDimensional F L := FiniteDimensional.right K F L
  haveI : IsAlgClosure K (AlgebraicClosure F) :=
    IsAlgClosure.ofAlgebraic K F (AlgebraicClosure F) (Algebra.isAlgebraic_of_finite K F)
  haveI : IsGalois F L := IsGalois.tower_top_of_isGalois K F L
  calc
    IsUnit (norm K x) ↔ IsUnit ((norm K) x ^ finrank F L) :=
      (isUnit_pow_iff (pos_iff_ne_zero.mp finrank_pos)).symm
    _ ↔ IsUnit (norm K (algebraMap (𝓞 F) (𝓞 L) x)) := by
      rw [← norm_norm K F (algebraMap (𝓞 F) (𝓞 L) x), norm_algebraMap F _, map_pow]
    _ ↔ IsUnit (algebraMap (𝓞 F) (𝓞 L) x) := (isUnit_norm_of_isGalois K)
    _ ↔ IsUnit (norm F (algebraMap (𝓞 F) (𝓞 L) x)) := (isUnit_norm_of_isGalois F).symm
    _ ↔ IsUnit (x ^ finrank F L) := (congr_arg IsUnit (norm_algebraMap F _)).to_iff
    _ ↔ IsUnit x := isUnit_pow_iff (pos_iff_ne_zero.mp finrank_pos)
#align ring_of_integers.is_unit_norm RingOfIntegers.isUnit_norm

end RingOfIntegers
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7acfb7bbf33dbc728135d8c265804131b87c3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
