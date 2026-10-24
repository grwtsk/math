# count_maximal_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f524eb7b-e349-040b-562a-da3628d2f2f2",
  "kind": "theorem",
  "lexical_name": "count_maximal_coprime",
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
  "slug": "count-maximal-coprime--3d82e76eb409344c5b314c6c",
  "source": {
    "blob": "f65c944f87f068f921a6e5e7f7d367e6746b8861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 484,
    "path": "GRWTSK/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d82e76eb409344c5b314c6ccbab6b3df72305353ba04ba042e174401a60ee32",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f524eb7b-e349-040b-562a-da3628d2f2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_maximal_coprime {w : HeightOneSpectrum R} (hw : w ≠ v) :
    count K v (w.asIdeal : FractionalIdeal R⁰ K) = 0 := by
  have hw_fact : (w.asIdeal : FractionalIdeal R⁰ K) =
      spanSingleton R⁰ ((algebraMap R K) 1)⁻¹ * ↑w.asIdeal := by
    rw [(algebraMap R K).map_one, inv_one, spanSingleton_one, one_mul]
  have hw_ne_zero : (w.asIdeal : FractionalIdeal R⁰ K) ≠ 0 :=
    coeIdeal_ne_zero.mpr w.ne_bot
  have hv : Irreducible (Associates.mk v.asIdeal) := by apply v.associates_irreducible
  have hw' : Irreducible (Associates.mk w.asIdeal) := by apply w.associates_irreducible
  rw [count_well_defined K v hw_ne_zero hw_fact, Ideal.span_singleton_one, ← Ideal.one_eq_top,
    Associates.mk_one, Associates.factors_one, Associates.count_zero hv, ofNat_zero, sub_zero,
    natCast_eq_zero, ← pow_one (Associates.mk w.asIdeal), Associates.factors_prime_pow hw',
    Associates.count_some hv, Multiset.replicate_one, Multiset.count_eq_zero,
    Multiset.mem_singleton]
  simp only [Subtype.mk.injEq]
  rw [Associates.mk_eq_mk_iff_associated, associated_iff_eq, ← HeightOneSpectrum.ext_iff]
  exact Ne.symm hw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f65c944f87f068f921a6e5e7f7d367e6746b8861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
