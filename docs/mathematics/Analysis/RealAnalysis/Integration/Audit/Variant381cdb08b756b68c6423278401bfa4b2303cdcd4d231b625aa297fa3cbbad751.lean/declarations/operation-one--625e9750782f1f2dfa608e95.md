# operation_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9080ed0817c38e0ce6083526cadb9a02e7faaf9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5685f30-2127-35f8-87ce-56348f46121e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9216e0b6-5016-ad4c-c01f-b741298b2dfc",
  "kind": "theorem",
  "lexical_name": "operation_one",
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
  "slug": "operation-one--625e9750782f1f2dfa608e95",
  "source": {
    "blob": "f9080ed0817c38e0ce6083526cadb9a02e7faaf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:625e9750782f1f2dfa608e955c58e54fca47dcd55c42790ad9929ae0186a8f3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9216e0b6-5016-ad4c-c01f-b741298b2dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operation_one (x : K × K) : operation (1 : K) x = (x.2, -x.1) := by
  rw [operation_eq_coefficients, coefficients_one]
  simp

end CharacteristicZero

section IntegralCorrection

variable (p : ℕ) [Fact p.Prime]

/-- Actual coefficient integrality uses the local field's closed unit ball.
The displayed syntactic denominator is not used as an integrality criterion.
The phase-domain condition `Supported t` remains a separate requirement:
Lean's totalized division also defines `operation t` outside that domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9080ed0817c38e0ce6083526cadb9a02e7faaf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
