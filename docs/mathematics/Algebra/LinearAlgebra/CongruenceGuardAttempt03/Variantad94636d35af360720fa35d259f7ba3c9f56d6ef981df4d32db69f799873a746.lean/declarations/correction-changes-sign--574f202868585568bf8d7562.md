# correction_changes_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f778dad-0819-aed1-f572-8e53d79797b8",
  "kind": "theorem",
  "lexical_name": "correction_changes_sign",
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
  "slug": "correction-changes-sign--574f202868585568bf8d7562",
  "source": {
    "blob": "4a1e574a2678fd1a07a9832f81df2d1cc28f0793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:574f202868585568bf8d75627771028c75d13271b0732c7f76aa059cb31bd9ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f778dad-0819-aed1-f572-8e53d79797b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_changes_sign :
    (indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ)).PosSemidef ∧
      ¬ indefinite.PosSemidef := by
  constructor
  · have he : indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ) =
        Matrix.diagonal ![(3:ℂ),1] := by
      ext i j; fin_cases i <;> fin_cases j <;>
        norm_num [indefinite,Matrix.diagonal]
    rw [he,Matrix.posSemidef_diagonal_iff]
    intro i
    fin_cases i <;> norm_num
  · exact negative_not_psd indefinite indefinite_negative

end Fixtures
end ContinuousResearch.CongruenceGuard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variantad94636d35af360720fa35d259f7ba3c9f56d6ef981df4d32db69f799873a746.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1e574a2678fd1a07a9832f81df2d1cc28f0793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
