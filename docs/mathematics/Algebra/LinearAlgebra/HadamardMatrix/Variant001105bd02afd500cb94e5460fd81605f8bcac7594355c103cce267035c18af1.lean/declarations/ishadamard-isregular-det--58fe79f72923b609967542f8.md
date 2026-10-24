# IsHadamard.isRegular_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2f5e213-84da-cca0-8c8e-580a36046af8",
  "kind": "theorem",
  "lexical_name": "IsHadamard.isRegular_det",
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
  "slug": "ishadamard-isregular-det--58fe79f72923b609967542f8",
  "source": {
    "blob": "96d28597998ad54c95d1f75c4a57946c4cfcfaff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58fe79f72923b609967542f83edbdc1b8a58e47d60b68fffcc10330b37820df9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2f5e213-84da-cca0-8c8e-580a36046af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsHadamard.isRegular_det (hA : A.IsHadamard)
    (hcard : IsRegular (Fintype.card n : R)) : IsRegular A.det := by
  have : IsRegular (A.det * star A.det) := by
    rw [hA.det_mul_star_det]
    exact hcard.pow _
  exact this.of_mul_left

/-- Build a Hadamard matrix from the one-sided row-orthogonality condition, provided the order is
regular in `R`.

This is the matrix form of [Theorem 2.3.6][deLauneyFlannery2011]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d28597998ad54c95d1f75c4a57946c4cfcfaff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
