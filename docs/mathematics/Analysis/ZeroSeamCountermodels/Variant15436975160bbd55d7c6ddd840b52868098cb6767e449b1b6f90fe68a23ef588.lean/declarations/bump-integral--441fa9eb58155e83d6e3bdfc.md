# bump_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a005ced7-e89e-f937-5143-5deeda712994",
  "kind": "theorem",
  "lexical_name": "bump_integral",
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
  "slug": "bump-integral--441fa9eb58155e83d6e3bdfc",
  "source": {
    "blob": "14ca09940b31ce1024d831ae269db12cc9f65661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 35,
    "path": "GRWTSK/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:441fa9eb58155e83d6e3bdfc561f2ed177ad4380f48b1baf6740b964b00f7370",
  "verification": {
    "reference": "docs/verification/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a005ced7-e89e-f937-5143-5deeda712994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_integral (M : ℝ) : (∫ x in (0 : ℝ)..1, bump M x) = M / 6 := by
  have hfun : bump M = fun x => M * (x ^ (1 : ℕ) - x ^ (2 : ℕ)) := by
    funext x
    unfold bump
    ring
  rw [hfun, intervalIntegral.integral_const_mul]
  rw [intervalIntegral.integral_sub (f := fun x : ℝ => x ^ (1 : ℕ))
    (g := fun x : ℝ => x ^ (2 : ℕ)) ((continuous_id.pow 1).intervalIntegrable 0 1)
    ((continuous_id.pow 2).intervalIntegrable 0 1)]
  rw [integral_pow, integral_pow]
  norm_num
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ca09940b31ce1024d831ae269db12cc9f65661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
