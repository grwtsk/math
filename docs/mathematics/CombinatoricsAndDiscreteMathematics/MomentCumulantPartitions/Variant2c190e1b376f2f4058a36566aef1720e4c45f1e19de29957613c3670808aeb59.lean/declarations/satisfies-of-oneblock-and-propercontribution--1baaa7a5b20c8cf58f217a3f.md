# satisfies_of_oneBlock_and_properContribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34489a4a-9730-a1cd-9f35-a1a52835335a",
  "kind": "theorem",
  "lexical_name": "satisfies_of_oneBlock_and_properContribution",
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
  "slug": "satisfies-of-oneblock-and-propercontribution--1baaa7a5b20c8cf58f217a3f",
  "source": {
    "blob": "1ea5a8e524e0066a07ed90ee91eae18e245b89f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 307,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1baaa7a5b20c8cf58f217a3f7e3af952745c8821ba49201c43187f35ff40fa10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34489a4a-9730-a1cd-9f35-a1a52835335a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem satisfies_of_oneBlock_and_properContribution
    (n : ℕ) (hn : 0 < n)
    (moment : R)
    (κ : Finset (Fin n) → R)
    (hone :
      κ (Finset.univ : Finset (Fin n)) =
        isolatedOneBlockCumulant n hn moment κ) :
    SatisfiesMomentCumulantRelation n moment κ := by
  exact (satisfies_iff_recursive_isolation n hn moment κ).2 hone

/-- The recursion is unique at the one-block coordinate once all proper-block
values are fixed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea5a8e524e0066a07ed90ee91eae18e245b89f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
