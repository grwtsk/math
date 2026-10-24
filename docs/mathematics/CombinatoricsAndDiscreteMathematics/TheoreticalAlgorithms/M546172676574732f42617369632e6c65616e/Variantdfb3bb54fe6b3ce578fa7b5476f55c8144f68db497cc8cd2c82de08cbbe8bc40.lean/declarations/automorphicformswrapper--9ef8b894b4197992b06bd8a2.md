# automorphicFormsWrapper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c06444e555dccd4988e697789f96d7f2baf0dd19048c35227031c1bb19b71cfc",
  "kind": "def",
  "lexical_name": "automorphicFormsWrapper",
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
  "slug": "automorphicformswrapper--9ef8b894b4197992b06bd8a2",
  "source": {
    "blob": "b7dbbccade15554bcce1a1909cf3f4c1742250de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ef8b894b4197992b06bd8a2886b004eaccf397751f5857562b598b67efb5e58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c06444e555dccd4988e697789f96d7f2baf0dd19048c35227031c1bb19b71cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def automorphicFormsWrapper : TargetWrapper where
  target := FWR.Target.AutomorphicReplacement
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.AutomorphicReplacement.Context,
      (FWR.Targets.AutomorphicReplacement.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.AutomorphicReplacement.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.AutomorphicReplacement (by decide)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7dbbccade15554bcce1a1909cf3f4c1742250de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
