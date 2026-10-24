# continuous_coinducingCoprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e17767568f1da790393dc9e1c9f396bf9f4b7cc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d73aede8-565e-d8f8-dc76-2aff96f1a5f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85903d2b-47ba-00bd-0b86-95e6cacf7fa3",
  "kind": "lemma",
  "lexical_name": "continuous_coinducingCoprod",
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
  "slug": "continuous-coinducingcoprod--3e96f63c2cebf164811de750",
  "source": {
    "blob": "e17767568f1da790393dc9e1c9f396bf9f4b7cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e96f63c2cebf164811de750e6f926140b3de547b105e43b3f249bcf9b1640fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopCatAdjunction/Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85903d2b-47ba-00bd-0b86-95e6cacf7fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_coinducingCoprod {S : LightProfinite.{u}} (x : X.obj.obj ⟨S⟩) :
    Continuous fun a ↦ (X.coinducingCoprod ⟨⟨S, x⟩, a⟩) := by
  suffices ∀ (i : (T : LightProfinite.{u}) × X.obj.obj ⟨T⟩),
      Continuous (fun (a : i.fst) ↦ X.coinducingCoprod ⟨i, a⟩) from this ⟨_, _⟩
  rw [← continuous_sigma_iff]
  apply continuous_coinduced_rng

variable {X} {Y : LightCondSet} (f : X ⟶ Y)

/-- The map part of the functor `LightCondSet ⥤ TopCat` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopCatAdjunction/Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant685fa9e68434165faac5f3e49b025de8fd5eb8c13c12922983733a46e429e477.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e17767568f1da790393dc9e1c9f396bf9f4b7cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
