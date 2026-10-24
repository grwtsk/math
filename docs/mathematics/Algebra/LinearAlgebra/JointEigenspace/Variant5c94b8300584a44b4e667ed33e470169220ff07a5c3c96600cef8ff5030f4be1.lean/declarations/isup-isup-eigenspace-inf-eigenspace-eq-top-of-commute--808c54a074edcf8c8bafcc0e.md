# iSup_iSup_eigenspace_inf_eigenspace_eq_top_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1679be56-93d4-3c5a-a632-2d38f34b446b",
  "kind": "theorem",
  "lexical_name": "iSup_iSup_eigenspace_inf_eigenspace_eq_top_of_commute",
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
  "slug": "isup-isup-eigenspace-inf-eigenspace-eq-top-of-commute--808c54a074edcf8c8bafcc0e",
  "source": {
    "blob": "1a4867970703b7915d39ede361982dc2ad8078a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808c54a074edcf8c8bafcc0e232cd9026b0720808303ebb44e1e0700cc4be7aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1679be56-93d4-3c5a-a632-2d38f34b446b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_iSup_eigenspace_inf_eigenspace_eq_top_of_commute (hA : A.IsSymmetric)
    (hB : B.IsSymmetric) (hAB : Commute A B) :
    (⨆ α, ⨆ γ, eigenspace A α ⊓ eigenspace B γ) = ⊤ := by
  simpa [iSup_eigenspace_inf_eigenspace_of_commute hB hAB] using
    Submodule.orthogonal_eq_bot_iff.mp <| hA.orthogonalComplement_iSup_eigenspaces_eq_bot

/-- Given a commuting pair of symmetric linear operators on a finite dimensional inner product
space, the space decomposes as an internal direct sum of simultaneous eigenspaces of these
operators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4867970703b7915d39ede361982dc2ad8078a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
