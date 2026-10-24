# _root_.GRWTSK.Algebra.RootIsFractionalMap.Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.IsFractional.mapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8668a759-40a2-a5ae-33a5-32c37e5403a2",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.RootIsFractionalMap.Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.IsFractional.mapEquiv",
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
  "slug": "root-grwtsk-algebra-rootisfractionalmap-varianta1654cbaee27fcfeb35a0acc7--4307a924e175ee4b37975257",
  "source": {
    "blob": "31ed17cf50d649e16f6c45c755a5464ca7474f94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 960,
    "line": 940,
    "path": "GRWTSK/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4307a924e175ee4b37975257ab4260d94cda9b268b2ae2acbcfd19cb6da42692",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8668a759-40a2-a5ae-33a5-32c37e5403a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 940–960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.RootIsFractionalMap.Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.IsFractional.mapEquiv {I : Submodule R K} (hI : IsFractional R⁰ I) :
    IsFractional S⁰ (I.map (semilinearEquivOfRingEquiv K L f).toLinearMap) := by
  simp only [IsFractional, mem_nonZeroDivisors_iff_ne_zero, ne_eq, Submodule.mem_map,
    forall_exists_index, and_imp, forall_apply_eq_imp_iff₂] at hI ⊢
  obtain ⟨r, hr0, hr⟩ := hI
  use f r
  refine ⟨by simp [hr0], ?_⟩
  intro x hx
  specialize hr x hx
  simp only [IsLocalization.IsInteger, RingHom.mem_rangeS] at hr ⊢
  obtain ⟨r', hr'⟩ := hr
  use f r'
  simp only [semilinearEquivOfRingEquiv, RingEquiv.toEquiv_eq_coe, Equiv.toFun_as_coe,
    EquivLike.coe_coe, Equiv.invFun_as_coe, LinearMap.coe_mk, AddHom.coe_mk]
  rw [Algebra.smul_def, ← ringEquivOfRingEquiv_algebraMap f (K := K) (L := L) r,
    ← map_mul, ← Algebra.smul_def, ← hr', ringEquivOfRingEquiv_algebraMap]

set_option backward.isDefEq.respectTransparency.types false in
/-- The equiv `FractionalIdeal R⁰ K ≃+* FractionalIdeal S⁰ L`
  induced by a ring isomorphism `f : R ≃+* S`. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean#L940).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ed17cf50d649e16f6c45c755a5464ca7474f94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
