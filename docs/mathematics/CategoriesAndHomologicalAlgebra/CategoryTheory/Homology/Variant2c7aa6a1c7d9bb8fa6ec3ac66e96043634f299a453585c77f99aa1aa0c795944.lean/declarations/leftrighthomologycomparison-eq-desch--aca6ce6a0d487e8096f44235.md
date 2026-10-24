# leftRightHomologyComparison'_eq_descH

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c39062ea-4efa-6224-d68d-c90989e93eab",
  "kind": "lemma",
  "lexical_name": "leftRightHomologyComparison'_eq_descH",
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
  "slug": "leftrighthomologycomparison-eq-desch--aca6ce6a0d487e8096f44235",
  "source": {
    "blob": "c2d6b9ae694201a90da61ea99e47d89a90589a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 576,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aca6ce6a0d487e8096f44235ac1c1ffc7fd1649ca55602d217d9897dc0a80c9e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39062ea-4efa-6224-d68d-c90989e93eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftRightHomologyComparison'_eq_descH :
    leftRightHomologyComparison' h₁ h₂ =
      h₁.descH (h₂.liftH (h₁.i ≫ h₂.p) (by simp))
        (by rw [← cancel_mono h₂.ι, assoc, RightHomologyData.liftH_ι,
          LeftHomologyData.f'_i_assoc, RightHomologyData.wp, zero_comp]) := by
  simp only [← cancel_mono h₂.ι, ← cancel_epi h₁.π, π_leftRightHomologyComparison'_ι,
    LeftHomologyData.π_descH_assoc, RightHomologyData.liftH_ι]

end

variable (S)

/-- If a short complex `S` has both a left and right homology,
this is the canonical morphism `S.leftHomology ⟶ S.rightHomology`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d6b9ae694201a90da61ea99e47d89a90589a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
