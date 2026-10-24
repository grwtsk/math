# isUnit_inr_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bad1dfa4-87e9-e4c7-641e-4c2e5039d44d",
  "kind": "theorem",
  "lexical_name": "isUnit_inr_iff",
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
  "slug": "isunit-inr-iff--7db61b78af06858842f5ed48",
  "source": {
    "blob": "b5dd863ad3b4b556472a3901a746fab5290d4bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 772,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db61b78af06858842f5ed48e986900597c757f21c287d7caa68dc859f4d81da",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bad1dfa4-87e9-e4c7-641e-4c2e5039d44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_inr_iff {m : M} : IsUnit (inr m : tsze R M) ↔ Subsingleton R := by
  simp_rw [isUnit_iff_isUnit_fst, fst_inr, isUnit_zero_iff, subsingleton_iff_zero_eq_one]

end Invertible

section DivisionSemiring
variable {R : Type u} {M : Type v}
variable [DivisionSemiring R] [AddCommGroup M] [Module Rᵐᵒᵖ M] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5dd863ad3b4b556472a3901a746fab5290d4bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
