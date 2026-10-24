# shifted_strict_positive_of_lt_bottom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64437a06-d5ff-256f-7edf-6f86036ce505",
  "kind": "theorem",
  "lexical_name": "shifted_strict_positive_of_lt_bottom",
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
  "slug": "shifted-strict-positive-of-lt-bottom--208b97dd7c7518fc7aaabae4",
  "source": {
    "blob": "f1b183593082b3ecf4f8a4cf14ea828fc5f3cfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208b97dd7c7518fc7aaabae4c8663323ea4a2471c009c00878684e8be85b716e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64437a06-d5ff-256f-7edf-6f86036ce505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_strict_positive_of_lt_bottom [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) {lam : ℝ} (hlam : lam < bottom hA) :
    (shifted A lam).PosDef := by
  rw [shifted_eq_spectral_conjugate hA]
  rw [conjStarAlgAut_apply]
  apply isUnit_coe.posDef_star_right_conjugate_iff.mpr
  exact posDef_diagonal_iff.mpr fun i => sub_pos.mpr
    (hlam.trans_le (bottom_le_eigenvalue hA i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b183593082b3ecf4f8a4cf14ea828fc5f3cfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
