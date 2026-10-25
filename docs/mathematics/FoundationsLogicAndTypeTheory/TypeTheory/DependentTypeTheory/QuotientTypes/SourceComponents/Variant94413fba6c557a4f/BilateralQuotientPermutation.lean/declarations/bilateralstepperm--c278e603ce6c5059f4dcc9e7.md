# bilateralStepPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44aa02f028fa01a0969743d66e762a281d1043585d0853df7506373d39c35e30",
  "kind": "def",
  "lexical_name": "bilateralStepPerm",
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
  "slug": "bilateralstepperm--c278e603ce6c5059f4dcc9e7",
  "source": {
    "blob": "513d4013203a81a8bbf05ab2e2542ba22d0ee0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c278e603ce6c5059f4dcc9e726ad18a7d18aab41c73895ff9cfd630f2c6fdff3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44aa02f028fa01a0969743d66e762a281d1043585d0853df7506373d39c35e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bilateralStepPerm
    (G : ReversibleSystem State Resolution) :
    Equiv.Perm G.BilateralCausalState where
  toFun := Quotient.map G.step (fun _ _ h => G.bilateral_step h)
  invFun := Quotient.map G.step.symm (fun _ _ h => G.bilateral_step_symm h)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change G.toBilateral (G.step.symm (G.step x)) = G.toBilateral x
    simp
  right_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change G.toBilateral (G.step (G.step.symm x)) = G.toBilateral x
    simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `513d4013203a81a8bbf05ab2e2542ba22d0ee0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
