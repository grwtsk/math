# isLocalization_C_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c45340-db06-3f0c-1d51-d24ec61f962a",
  "kind": "lemma",
  "lexical_name": "isLocalization_C_mk'",
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
  "slug": "islocalization-c-mk--2973a69f7e58dd6cf9336b2e",
  "source": {
    "blob": "5629cf9f4cd5dc40b9c598888a4616a5fbfae624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2973a69f7e58dd6cf9336b2e6e185ea167190fa7d9ec77ffdc41d47050c44a92",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c45340-db06-3f0c-1d51-d24ec61f962a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalization_C_mk' (a : R) (m : M) :
    C (IsLocalization.mk' S a m) = IsLocalization.mk' (MvPolynomial σ S) (C (σ := σ) a)
      ⟨C m, Submonoid.mem_map_of_mem C m.property⟩ := by
  simp_rw [IsLocalization.eq_mk'_iff_mul_eq, algebraMap_def, map_C, ← map_mul,
    IsLocalization.mk'_spec]

end MvPolynomial

namespace IsLocalization.Away

open MvPolynomial

variable (r : R) [IsLocalization.Away r S]

/-- The canonical algebra map from `MvPolynomial Unit R` quotiented by
`C r * X () - 1` to the localization of `R` away from `r`. -/
private noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629cf9f4cd5dc40b9c598888a4616a5fbfae624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
