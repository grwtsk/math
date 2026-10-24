# IsDedekindDomain.isPrincipalIdealRing_localization_over_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ae58740-5bd3-837e-529c-cfc5ab997f55",
  "kind": "theorem",
  "lexical_name": "IsDedekindDomain.isPrincipalIdealRing_localization_over_prime",
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
  "slug": "isdedekinddomain-isprincipalidealring-localization-over-prime--e0e19eaa4b5b25bd4a61f61d",
  "source": {
    "blob": "fff911466722f4890a4079e480f5388df6735adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 251,
    "path": "GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0e19eaa4b5b25bd4a61f61d0b8c68680d799abc6f827241a7c1a39e12746d6d",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ae58740-5bd3-837e-529c-cfc5ab997f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDedekindDomain.isPrincipalIdealRing_localization_over_prime [IsDomain S] :
    IsPrincipalIdealRing Sₚ := by
  letI := Classical.decEq (Ideal Sₚ)
  letI := Classical.decPred fun P : Ideal Sₚ => P.IsPrime
  refine
    IsPrincipalIdealRing.of_finite_primes
      (Set.Finite.ofFinset
        {P ∈ {⊥} ∪ (normalizedFactors (Ideal.map (algebraMap R Sₚ) p)).toFinset | P.IsPrime}
        fun P => ?_)
  rw [Finset.mem_filter, Finset.mem_union, Finset.mem_singleton, Set.mem_setOf,
    Multiset.mem_toFinset]
  exact
    and_iff_right_of_imp fun hP =>
      or_iff_not_imp_left.mpr (IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime S p hp0 hP)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff911466722f4890a4079e480f5388df6735adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
