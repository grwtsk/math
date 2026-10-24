# eventual_nc_impossible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e2379ad-1663-23ee-2505-a22f5290ec0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/Analysis/Asymptotics/ExponentialEnergyObstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b7ca6a6-4b04-da48-12cf-a8948349f66f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca084dd4-304d-1c99-fa0b-84fa4db7feff",
  "kind": "theorem",
  "lexical_name": "eventual_nc_impossible",
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
  "slug": "eventual-nc-impossible--aad57bd3f5733452549099d7",
  "source": {
    "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 175,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad57bd3f5733452549099d794f9e01a04f344179f38ba40c8a01be587f98d76",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca084dd4-304d-1c99-fa0b-84fa4db7feff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventual_nc_impossible
    {Enew Eold N Aold Anew Γ loss : ℝ → ℝ} {c K r : ℝ}
    (hc : 0 < c) (hlower : ExponentialEnergyInput Enew c)
    (hbroad : ∀ᶠ T : ℝ in atTop, Enew T ≤ Γ T * Eold T + N T)
    (hnew : ∀ᶠ T : ℝ in atTop, 0 ≤ Anew T)
    (hbudget : ∀ᶠ T : ℝ in atTop,
      Γ T * (Eold T + Aold T) + loss T ≤ K * (1 + T) ^ r) :
    ¬ (∀ᶠ T : ℝ in atTop,
      N T ≤ Γ T * Aold T - Anew T + loss T) := by
  intro hnarrow
  apply exponential_input_not_polynomial hc hlower
  filter_upwards [hbroad, hnew, hbudget, hnarrow] with T hb hn hbudget hnarrow
  have hstep := narrow_implies_transition hb hnarrow
  linarith

/-- NC without a polynomial initial-reserve requirement admits a crude
finite budget.  Here `remaining` and `blockCount` represent inventory
cardinalities and `U` is any independent upper envelope for narrow energy.
This theorem does not assert that such an envelope is polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9887c4023b79fc6cda09e8dd77f897a3ca2f618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
