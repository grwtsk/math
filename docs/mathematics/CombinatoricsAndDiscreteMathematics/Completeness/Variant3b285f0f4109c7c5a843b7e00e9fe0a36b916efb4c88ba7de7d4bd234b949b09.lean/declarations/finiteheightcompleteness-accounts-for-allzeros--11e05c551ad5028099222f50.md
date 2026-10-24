# finiteHeightCompleteness_accounts_for_allZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71f98f6a-41be-0c5a-ea36-73afb1962be3",
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
  "slug": "finiteheightcompleteness-accounts-for-allzeros--11e05c551ad5028099222f50",
  "source": {
    "blob": "1fc122b7e19b5085b47ce811896ed08904a5edd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e05c551ad5028099222f5099a1231d7435b7943b45011e9245ba11e52f8609",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71f98f6a-41be-0c5a-ea36-73afb1962be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc122b7e19b5085b47ce811896ed08904a5edd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
