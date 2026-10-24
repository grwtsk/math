# eulerChar_eq_sum_finSet_of_finrankSupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e6f8030-f0ff-2bfb-e08d-ad0d87df1eff",
  "kind": "theorem",
  "lexical_name": "eulerChar_eq_sum_finSet_of_finrankSupport_subset",
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
  "slug": "eulerchar-eq-sum-finset-of-finranksupport-subset--fbb2cedd7c7c4fbfabbaf3f3",
  "source": {
    "blob": "9d9954247bf4a6e3c2c2fc354051c8bc77010581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb2cedd7c7c4fbfabbaf3f3f94d7f54feec7a03da3fce2614cc78981ce33866",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e6f8030-f0ff-2bfb-e08d-ad0d87df1eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerChar_eq_sum_finSet_of_finrankSupport_subset
    (X : CategoryTheory.GradedObject ι (ModuleCat R)) (indices : Finset ι)
    (h_support : finrankSupport X ⊆ indices) :
    eulerChar c X = ∑ i ∈ indices, (c.χ i : ℤ) * Module.finrank R (X i) := by
  simp only [eulerChar]
  rw [finsum_eq_sum_of_support_subset]
  exact (support_eulerChar_summand c X).symm ▸ h_support

end GradedObject

namespace HomologicalComplex

variable {c : ComplexShape ι} [c.EulerCharSigns]

/-- The Euler characteristic of a homological complex as a sum over all indices using `finsum`.
The sign at each index is determined by the `ComplexShape.EulerCharSigns` instance.
Defaults to 0 if the support of the ranks is infinite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9954247bf4a6e3c2c2fc354051c8bc77010581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
