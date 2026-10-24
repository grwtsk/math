# finiteHeightCompleteness_accounts_for_allZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14c9878b12365730eb87b1cd17ec9451b7ad43da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d06be930-9852-c931-3661-eeca516bde65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6112e357-5ba1-e986-9372-36b52d89088c",
  "kind": "theorem",
  "lexical_name": "finiteHeightCompleteness_accounts_for_allZeros",
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
  "slug": "finiteheightcompleteness-accounts-for-allzeros--bfae541d568ade38fd81171b",
  "source": {
    "blob": "14c9878b12365730eb87b1cd17ec9451b7ad43da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfae541d568ade38fd81171b2e7e37647a8c159433bbbd87b6943567d96e84e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6112e357-5ba1-e986-9372-36b52d89088c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHeightCompleteness_accounts_for_allZeros
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (certificate :
      FiniteHeightCompletenessCertificate
        authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    ∃ index : certificate.Region,
      z ∈ (certificate.region index).cell.interior := by
  obtain ⟨globalIndex, globalValue⟩ :=
    certificate.globalCount.certificate.complete
      z owned zero
  obtain ⟨regionIndex, assigned⟩ :=
    certificate.assignsEveryGlobalZero globalIndex
  exact ⟨regionIndex, by simpa [globalValue] using assigned⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c9878b12365730eb87b1cd17ec9451b7ad43da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
