# boundaryFunctional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86b44889a6dc2af4815a2940e2a3921e6577f109ba13eab84275579d2d61b9fe",
  "kind": "def",
  "lexical_name": "boundaryFunctional",
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
  "slug": "boundaryfunctional--7afa8e600a090064d925f10c",
  "source": {
    "blob": "8dd5f847a770a48d890f3869ad3ded07306dd5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 19,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7afa8e600a090064d925f10c183ca298de3161a65c9183929bbc8cb3488049c1",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86b44889a6dc2af4815a2940e2a3921e6577f109ba13eab84275579d2d61b9fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryFunctional (N c : ℕ) : EuclideanSpace ℝ (Fin N) →ₗ[ℝ] ℝ where
  toFun v := ∑ i, if i.val = c then v i else 0
  map_add' v w := by
    change (∑ i, if i.val = c then v i+w i else 0) =
      (∑ i, if i.val = c then v i else 0) + ∑ i, if i.val = c then w i else 0
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    split_ifs <;> simp
  map_smul' a v := by
    change (∑ i, if i.val = c then a*v i else 0) = a*∑ i, if i.val = c then v i else 0
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd5f847a770a48d890f3869ad3ded07306dd5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
