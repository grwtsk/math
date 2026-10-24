# dvd_C_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2015173-bdb6-963d-0427-8ab069ea73eb",
  "kind": "theorem",
  "lexical_name": "dvd_C_iff_exists",
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
  "slug": "dvd-c-iff-exists--f8212edfe92cf6a9057d6780",
  "source": {
    "blob": "2e96814e8968ba8cdbe06c602423d960cbc4b298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 101,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8212edfe92cf6a9057d6780fdd398579bc722e42dbed7466641aef1148ebb9d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2015173-bdb6-963d-0427-8ab069ea73eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_C_iff_exists {f : MvPolynomial σ R} {a : R} (ha : a ≠ 0) :
    f ∣ C a ↔ ∃ b, b ∣ a ∧ f = C b := by
  constructor
  · intro hf
    use f.coeff 0
    suffices f.totalDegree = 0 by
      rw [totalDegree_eq_zero_iff_eq_C] at this
      refine ⟨?_, this⟩
      rw [this, C_dvd_iff_dvd_coeff] at hf
      simpa using hf 0
    apply Nat.eq_zero_of_le_zero
    simpa using totalDegree_le_of_dvd_of_isDomain hf (by simp [ha])
  · rintro ⟨b, hab, rfl⟩
    exact map_dvd C hab

end NoZeroDivisors

section nonZeroDivisors

open nonZeroDivisors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e96814e8968ba8cdbe06c602423d960cbc4b298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
