# dfinsuppFamily_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e11de54-8afc-d78b-efa3-fa0f1c375b9d",
  "kind": "theorem",
  "lexical_name": "dfinsuppFamily_smul",
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
  "slug": "dfinsuppfamily-smul--0e47a0c9b8f2bde9a87b6717",
  "source": {
    "blob": "dd93515178cb68f8851ef3e95c8df9dbccb426ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e47a0c9b8f2bde9a87b6717eb4ee135630e7ff0982bf0d24d15c5c185ca36a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e11de54-8afc-d78b-efa3-fa0f1c375b9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dfinsuppFamily_smul
    [Monoid S] [∀ p, DistribMulAction S (N p)] [∀ p, SMulCommClass R S (N p)]
    (s : S) (f : Π (p : Π i, κ i), MultilinearMap R (fun i ↦ M i (p i)) (N p)) :
    dfinsuppFamily (s • f) = s • dfinsuppFamily f := by
  ext; simp

end Semiring

section CommSemiring

variable [DecidableEq ι] [Fintype ι] [CommSemiring R]
variable [∀ i k, AddCommMonoid (M i k)] [∀ p, AddCommMonoid (N p)]
variable [∀ i k, Module R (M i k)] [∀ p, Module R (N p)]

/-- `MultilinearMap.dfinsuppFamily` as a linear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd93515178cb68f8851ef3e95c8df9dbccb426ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
