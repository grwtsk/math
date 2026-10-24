# unitFredholm_isProved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5bba5383ee4dafd671a07450ad88620eb1cdb4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bf55f43-9c79-d466-6529-9a563443fb63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ccaf54e-13c2-66a6-28e8-00771c284672",
  "kind": "theorem",
  "lexical_name": "unitFredholm_isProved",
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
  "slug": "unitfredholm-isproved--aa142f0e0244256dea841353",
  "source": {
    "blob": "d5bba5383ee4dafd671a07450ad88620eb1cdb4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa142f0e0244256dea841353ab9627c512988ad09e062404471a37bee087dcb4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ccaf54e-13c2-66a6-28e8-00771c284672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitFredholm_isProved :
    (FWR.Manuscript.FredholmWitness.finiteDeterminantRedundancyWitness
      unitFredholm True.intro).isProved = true := by
  rfl

#check FWR.Manuscript.ExternalBoundary.forbiddenAuthorityWitness_hasResidue
#check FWR.Manuscript.ExternalBoundary.allSources_complete
#check FWR.Manuscript.ExternalBoundary.allSources_nodup
#check FWR.Manuscript.ExternalBoundary.authorityOverclaimResidues_targets_correct
#check FWR.Manuscript.ModularWave.Attempt.validate_hasResidue
#check FWR.Manuscript.ModularWave.Attempt.residues_targets_correct
#check FWR.Manuscript.ModularWave.Attempt.allAtoms_nodup
#check FWR.Manuscript.ModularWave.Attempt.atomId_injective
#check FWR.Manuscript.QuotientLimit.validationResidues_count
#check FWR.Manuscript.QuotientLimit.validationResidues_targets_correct
#check FWR.Manuscript.QuotientLimit.allAtoms_nodup
#check FWR.Manuscript.QuotientLimit.atomId_injective
#check FWR.Manuscript.FredholmWitness.finiteDeterminantRedundancyWitness_isProved
#check FWR.Manuscript.FredholmWitness.analyticOverclaimWitness_hasResidue
#check FWR.Manuscript.FredholmWitness.analyticOverclaimResidues_targets_correct
#check FWR.Manuscript.FredholmWitness.overclaimAtoms_nodup
#check FWR.Manuscript.Classifier.deterministicClassifierWitness_isProved
#check FWR.Manuscript.Classifier.primeGapOverclaimWitness_hasResidue
#check FWR.Manuscript.Classifier.classifierResidues_targets_correct
#check FWR.Manuscript.Classifier.allAtoms_nodup
#check FWR.Manuscript.Classifier.atomId_injective
#check FWR.Manuscript.Scheduler.guardWitness_isProved
#check FWR.Manuscript.Scheduler.continuumOverclaimWitness_hasResidue
#check FWR.Manuscript.Scheduler.schedulerResidues_targets_correct
#check FWR.Manuscript.Scheduler.allAtoms_nodup
#check FWR.Manuscript.Scheduler.atomId_injective
#check FWR.Manuscript.MonomialTree.Exponent.step_q_weight
#check FWR.Manuscript.MonomialTree.deterministicClusterWitness_isProved
#check FWR.Manuscript.MonomialTree.primeCountingOverclaimWitness_hasResidue
#check FWR.Manuscript.MonomialTree.clusterResidues_targets_correct
#check FWR.Manuscript.MonomialTree.allAtoms_nodup
#check FWR.Manuscript.MonomialTree.atomId_injective

end FWR.Tests.ManuscriptSmoke



namespace FWR.Tests.PipelineSmoke

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5bba5383ee4dafd671a07450ad88620eb1cdb4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
