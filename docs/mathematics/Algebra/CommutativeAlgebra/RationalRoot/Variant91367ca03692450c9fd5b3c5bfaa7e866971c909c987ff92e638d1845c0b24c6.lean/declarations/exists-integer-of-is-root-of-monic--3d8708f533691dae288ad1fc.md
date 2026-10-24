# exists_integer_of_is_root_of_monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:858f67dc-2beb-2e37-821a-afdd49563486",
  "kind": "theorem",
  "lexical_name": "exists_integer_of_is_root_of_monic",
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
  "slug": "exists-integer-of-is-root-of-monic--3d8708f533691dae288ad1fc",
  "source": {
    "blob": "55409659a7a3004a03c2f05f39b1e4a7c3205a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 127,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d8708f533691dae288ad1fc9429623cac3458b368ad07782b72c009c2aefa5c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:858f67dc-2beb-2e37-821a-afdd49563486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_integer_of_is_root_of_monic {p : A[X]} (hp : Monic p) {r : K} (hr : aeval r p = 0) :
    ∃ r' : A, r = algebraMap A K r' ∧ r' ∣ p.coeff 0 := by
  /- I tried deducing this from above by unwrapping IsInteger,
    but the divisibility condition is annoying -/
  obtain ⟨inv, h_inv⟩ := hp ▸ den_dvd_of_is_root hr
  use num A r * inv, ?_
  · have h : inv ∣ 1 := ⟨den A r, by simpa [mul_comm] using h_inv⟩
    simpa using mul_dvd_mul (num_dvd_of_is_root hr) h
  · have d_ne_zero : algebraMap A K (den A r) ≠ 0 :=
      IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors (den A r).prop
    nth_rw 1 [← mk'_num_den' A r]
    rw [div_eq_iff d_ne_zero, map_mul, mul_assoc, mul_comm ((algebraMap A K) inv),
      ← map_mul, ← h_inv, map_one, mul_one]

namespace UniqueFactorizationMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55409659a7a3004a03c2f05f39b1e4a7c3205a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
