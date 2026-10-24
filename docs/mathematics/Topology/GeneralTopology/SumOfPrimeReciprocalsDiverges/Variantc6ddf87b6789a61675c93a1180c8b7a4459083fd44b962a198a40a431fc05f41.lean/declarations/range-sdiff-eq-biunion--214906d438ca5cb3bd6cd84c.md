# range_sdiff_eq_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b86c6b-6b76-04bb-b127-232dbe7e09d0",
  "kind": "theorem",
  "lexical_name": "range_sdiff_eq_biUnion",
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
  "slug": "range-sdiff-eq-biunion--214906d438ca5cb3bd6cd84c",
  "source": {
    "blob": "abafe376e464326017245c823a6355307a6dba7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:214906d438ca5cb3bd6cd84cf0821107d91ff9a5247fcbf0de15b894903108e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b86c6b-6b76-04bb-b127-232dbe7e09d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_sdiff_eq_biUnion {x k : ℕ} : range x \ M x k = U x k := by
  ext e
  simp only [mem_biUnion, not_and, mem_sdiff, mem_filter, mem_range, U, M, P]
  push_neg
  constructor
  · rintro ⟨hex, hexh⟩
    obtain ⟨p, ⟨hpp, hpe1⟩, hpk⟩ := hexh hex
    refine ⟨p, ?_, ⟨hex, hpe1⟩⟩
    exact ⟨(Nat.le_of_dvd e.succ_pos hpe1).trans_lt (Nat.succ_lt_succ hex), hpk, hpp⟩
  · rintro ⟨p, hpfilter, ⟨hex, hpe1⟩⟩
    rw [imp_iff_right hex]
    exact ⟨hex, ⟨p, ⟨hpfilter.2.2, hpe1⟩, hpfilter.2.1⟩⟩

/--
The number of `e < x` for which `e + 1` has a prime factor `p > k` is bounded by `x` times the sum
of reciprocals of primes in `(k, x]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abafe376e464326017245c823a6355307a6dba7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
