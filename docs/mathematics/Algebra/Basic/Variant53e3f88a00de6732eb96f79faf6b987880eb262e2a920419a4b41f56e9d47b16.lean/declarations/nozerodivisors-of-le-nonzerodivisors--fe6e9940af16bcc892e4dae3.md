# noZeroDivisors_of_le_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84069fd4-d501-154e-a0fd-bcd331b07605",
  "kind": "theorem",
  "lexical_name": "noZeroDivisors_of_le_nonZeroDivisors",
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
  "slug": "nozerodivisors-of-le-nonzerodivisors--fe6e9940af16bcc892e4dae3",
  "source": {
    "blob": "4da5b6d47c3876f116cd987bc20d6045e1de7d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1262,
    "line": 1243,
    "path": "GRWTSK/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe6e9940af16bcc892e4dae3bccfb530e6bef272366f4fd6e55c52d8498f2726",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84069fd4-d501-154e-a0fd-bcd331b07605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1243–1262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noZeroDivisors_of_le_nonZeroDivisors [Algebra A S] {M : Submonoid A} [IsLocalization M S]
    (hM : M ≤ nonZeroDivisors A) : NoZeroDivisors S :=
  {
    eq_zero_or_eq_zero_of_mul_eq_zero := by
      intro z w h
      cases' surj M z with x hx
      cases' surj M w with y hy
      have :
        z * w * algebraMap A S y.2 * algebraMap A S x.2 = algebraMap A S x.1 * algebraMap A S y.1 :=
        by rw [mul_assoc z, hy, ← hx]; ring
      rw [h, zero_mul, zero_mul, ← (algebraMap A S).map_mul] at this
      cases' eq_zero_or_eq_zero_of_mul_eq_zero ((to_map_eq_zero_iff S hM).mp this.symm) with H H
      · exact Or.inl (eq_zero_of_fst_eq_zero hx H)
      · exact Or.inr (eq_zero_of_fst_eq_zero hy H) }
#align is_localization.no_zero_divisors_of_le_non_zero_divisors IsLocalization.noZeroDivisors_of_le_nonZeroDivisors

/-- A `CommRing` `S` which is the localization of an integral domain `R` at a subset of
non-zero elements is an integral domain.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean#L1243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da5b6d47c3876f116cd987bc20d6045e1de7d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
