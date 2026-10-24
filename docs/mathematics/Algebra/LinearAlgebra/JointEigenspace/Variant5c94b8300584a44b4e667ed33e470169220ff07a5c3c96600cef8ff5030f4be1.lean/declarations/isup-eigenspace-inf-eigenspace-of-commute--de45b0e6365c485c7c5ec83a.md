# iSup_eigenspace_inf_eigenspace_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5baef7c1-78aa-6075-fd58-ab9254036d69",
  "kind": "theorem",
  "lexical_name": "iSup_eigenspace_inf_eigenspace_of_commute",
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
  "slug": "isup-eigenspace-inf-eigenspace-of-commute--de45b0e6365c485c7c5ec83a",
  "source": {
    "blob": "1a4867970703b7915d39ede361982dc2ad8078a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de45b0e6365c485c7c5ec83a99d86c8df38e7a7d9808b79e709e762b49e9f634",
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

Occurrence: `result:5baef7c1-78aa-6075-fd58-ab9254036d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_eigenspace_inf_eigenspace_of_commute (hB : B.IsSymmetric) (hAB : Commute A B) :
    (⨆ γ, eigenspace A α ⊓ eigenspace B γ) = eigenspace A α := by
  conv_rhs => rw [← (eigenspace A α).map_subtype_top]
  simp only [← genEigenspace_eq_eigenspace (f := B), ← Submodule.map_iSup,
    (eigenspace A α).inf_genEigenspace _ (mapsTo_genEigenspace_of_comm hAB α 1)]
  congr 1
  simpa only [genEigenspace_eq_eigenspace, Submodule.orthogonal_eq_bot_iff]
    using orthogonalComplement_iSup_eigenspaces_eq_bot <|
      hB.restrict_invariant <| mapsTo_genEigenspace_of_comm hAB α 1

/-- If A and B are commuting symmetric operators acting on a finite dimensional inner product space,
then the simultaneous eigenspaces of A and B exhaust the space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4867970703b7915d39ede361982dc2ad8078a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
