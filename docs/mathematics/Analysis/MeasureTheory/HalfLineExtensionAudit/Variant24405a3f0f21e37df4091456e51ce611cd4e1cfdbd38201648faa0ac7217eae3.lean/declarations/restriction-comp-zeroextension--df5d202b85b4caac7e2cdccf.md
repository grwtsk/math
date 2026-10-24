# restriction_comp_zeroExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d29c00359dd7c0f59dec0b0970a50008f32373db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31c37266-d6ea-8ce3-02a0-7c649cb978ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5b287d6-8089-78ac-f1e9-809b43aee265",
  "kind": "theorem",
  "lexical_name": "restriction_comp_zeroExtension",
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
  "slug": "restriction-comp-zeroextension--df5d202b85b4caac7e2cdccf",
  "source": {
    "blob": "d29c00359dd7c0f59dec0b0970a50008f32373db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 105,
    "path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df5d202b85b4caac7e2cdccfa5cd1bbd7569f6b78f423a2c2378b453e22ce9af",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5b287d6-8089-78ac-f1e9-809b43aee265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restriction_comp_zeroExtension :
    restriction.comp zeroExtension.toContinuousLinearMap = ContinuousLinearMap.id ℂ H := by
  apply ContinuousLinearMap.ext
  intro f
  exact restriction_zeroExtension f

end
end HalfLineExtensionScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @HalfLineExtensionScratch.FullH
#print HalfLineExtensionScratch.FullH
#print axioms HalfLineExtensionScratch.FullH

#check @HalfLineExtensionScratch.zeroExtensionFunction
#print HalfLineExtensionScratch.zeroExtensionFunction
#print axioms HalfLineExtensionScratch.zeroExtensionFunction

#check @HalfLineExtensionScratch.zeroExtensionFunction_memLp
#print HalfLineExtensionScratch.zeroExtensionFunction_memLp
#print axioms HalfLineExtensionScratch.zeroExtensionFunction_memLp

#check @HalfLineExtensionScratch.zeroExtensionVector
#print HalfLineExtensionScratch.zeroExtensionVector
#print axioms HalfLineExtensionScratch.zeroExtensionVector

#check @HalfLineExtensionScratch.zeroExtensionVector_ae
#print HalfLineExtensionScratch.zeroExtensionVector_ae
#print axioms HalfLineExtensionScratch.zeroExtensionVector_ae

#check @HalfLineExtensionScratch.zeroExtensionVector_norm
#print HalfLineExtensionScratch.zeroExtensionVector_norm
#print axioms HalfLineExtensionScratch.zeroExtensionVector_norm

#check @HalfLineExtensionScratch.zeroExtensionVector_add
#print HalfLineExtensionScratch.zeroExtensionVector_add
#print axioms HalfLineExtensionScratch.zeroExtensionVector_add

#check @HalfLineExtensionScratch.zeroExtensionVector_smul
#print HalfLineExtensionScratch.zeroExtensionVector_smul
#print axioms HalfLineExtensionScratch.zeroExtensionVector_smul

#check @HalfLineExtensionScratch.zeroExtension
#print HalfLineExtensionScratch.zeroExtension
#print axioms HalfLineExtensionScratch.zeroExtension

#check @HalfLineExtensionScratch.zeroExtension_ae
#print HalfLineExtensionScratch.zeroExtension_ae
#print axioms HalfLineExtensionScratch.zeroExtension_ae

#check @HalfLineExtensionScratch.zeroExtension_norm
#print HalfLineExtensionScratch.zeroExtension_norm
#print axioms HalfLineExtensionScratch.zeroExtension_norm

#check @HalfLineExtensionScratch.zeroExtension_ae_halfLine
#print HalfLineExtensionScratch.zeroExtension_ae_halfLine
#print axioms HalfLineExtensionScratch.zeroExtension_ae_halfLine

#check @HalfLineExtensionScratch.zeroExtension_ae_nonpositive
#print HalfLineExtensionScratch.zeroExtension_ae_nonpositive
#print axioms HalfLineExtensionScratch.zeroExtension_ae_nonpositive

#check @HalfLineExtensionScratch.restriction
#print HalfLineExtensionScratch.restriction
#print axioms HalfLineExtensionScratch.restriction

#check @HalfLineExtensionScratch.restriction_ae
#print HalfLineExtensionScratch.restriction_ae
#print axioms HalfLineExtensionScratch.restriction_ae

#check @HalfLineExtensionScratch.restriction_norm_le
#print HalfLineExtensionScratch.restriction_norm_le
#print axioms HalfLineExtensionScratch.restriction_norm_le

#check @HalfLineExtensionScratch.restriction_opNorm_le
#print HalfLineExtensionScratch.restriction_opNorm_le
#print axioms HalfLineExtensionScratch.restriction_opNorm_le

#check @HalfLineExtensionScratch.restriction_zeroExtension
#print HalfLineExtensionScratch.restriction_zeroExtension
#print axioms HalfLineExtensionScratch.restriction_zeroExtension

#check @HalfLineExtensionScratch.restriction_comp_zeroExtension
#print HalfLineExtensionScratch.restriction_comp_zeroExtension
#print axioms HalfLineExtensionScratch.restriction_comp_zeroExtension
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d29c00359dd7c0f59dec0b0970a50008f32373db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
