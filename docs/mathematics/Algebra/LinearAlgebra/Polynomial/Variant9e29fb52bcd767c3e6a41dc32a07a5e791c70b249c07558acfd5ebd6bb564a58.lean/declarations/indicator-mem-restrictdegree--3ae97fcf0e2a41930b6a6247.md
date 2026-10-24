# indicator_mem_restrictDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5705fb52-e045-56a9-0ffe-e2cdb10130a5",
  "kind": "theorem",
  "lexical_name": "indicator_mem_restrictDegree",
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
  "slug": "indicator-mem-restrictdegree--3ae97fcf0e2a41930b6a6247",
  "source": {
    "blob": "9ddeda3f5caa35dfcdaef82cdeaf833735f59427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae97fcf0e2a41930b6a624747ad4ad455e004e7c216ffb73eb674fd618a50cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5705fb52-e045-56a9-0ffe-e2cdb10130a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_mem_restrictDegree (c : σ → K) :
    indicator c ∈ restrictDegree σ K (Fintype.card K - 1) := by
  classical
  rw [mem_restrictDegree_iff_sup, indicator]
  intro n
  refine le_trans (Multiset.count_le_of_le _ <| degrees_indicator _) (le_of_eq ?_)
  simp_rw [← Multiset.coe_countAddMonoidHom, map_sum,
    AddMonoidHom.map_nsmul, Multiset.coe_countAddMonoidHom, nsmul_eq_mul, Nat.cast_id]
  trans
  · refine Finset.sum_eq_single n ?_ ?_
    · intro b _ ne
      simp [Multiset.count_singleton, ne, if_neg (Ne.symm _)]
    · intro h; exact (h <| Finset.mem_univ _).elim
  · rw [Multiset.count_singleton_self, mul_one]

end CommRing

variable [Field K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddeda3f5caa35dfcdaef82cdeaf833735f59427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
