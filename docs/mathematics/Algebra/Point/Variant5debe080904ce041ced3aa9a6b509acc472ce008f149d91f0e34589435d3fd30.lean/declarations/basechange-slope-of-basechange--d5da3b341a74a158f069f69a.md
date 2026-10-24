# baseChange_slope_of_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "779406a776c31d94819e06bbde069db277b2fb89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d98750f7-9e8a-c23f-24e0-2645ffa311e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4242727e-6d30-588a-489d-750bcdd66c20",
  "kind": "lemma",
  "lexical_name": "baseChange_slope_of_baseChange",
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
  "slug": "basechange-slope-of-basechange--d5da3b341a74a158f069f69a",
  "source": {
    "blob": "779406a776c31d94819e06bbde069db277b2fb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 493,
    "path": "GRWTSK/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5da3b341a74a158f069f69a2636a3887d667469b326843c1bbdfd922fc895a2",
  "verification": {
    "reference": "docs/verification/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4242727e-6d30-588a-489d-750bcdd66c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_slope_of_baseChange {R : Type u} [CommRing R] (W : WeierstrassCurve R)
    (F : Type v) [Field F] [Algebra R F] (K : Type w) [Field K] [Algebra R K] [Algebra F K]
    [IsScalarTower R F K] (x₁ x₂ y₁ y₂ : F) :
    (W.baseChange K).slope (algebraMap F K x₁) (algebraMap F K x₂) (algebraMap F K y₁)
        (algebraMap F K y₂) =
      algebraMap F K ((W.baseChange F).slope x₁ x₂ y₁ y₂) := by
  rw [← baseChange_slope, baseChange_baseChange]
#align weierstrass_curve.base_change_slope_of_base_change WeierstrassCurve.baseChange_slope_of_baseChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779406a776c31d94819e06bbde069db277b2fb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
