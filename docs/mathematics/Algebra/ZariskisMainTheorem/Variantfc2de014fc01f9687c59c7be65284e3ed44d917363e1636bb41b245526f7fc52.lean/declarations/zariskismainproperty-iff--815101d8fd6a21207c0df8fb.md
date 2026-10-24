# zariskisMainProperty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abd1471b-e6de-495d-1db6-6163bac2acad",
  "kind": "lemma",
  "lexical_name": "zariskisMainProperty_iff",
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
  "slug": "zariskismainproperty-iff--815101d8fd6a21207c0df8fb",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815101d8fd6a21207c0df8fbb379e6e8ae8297e1f44b5c8927701e2bcd59dd8d",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd1471b-e6de-495d-1db6-6163bac2acad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zariskisMainProperty_iff {p : Ideal S} :
    ZariskisMainProperty R p ↔ ∃ r ∉ p, IsIntegral R r ∧ ∀ x, ∃ m, IsIntegral R (r ^ m * x) := by
  simp only [ZariskisMainProperty, Subtype.exists, ← exists_prop, @exists_comm (_ ∉ p)]
  refine exists₃_congr fun r hr hrp ↦ ?_
  rw [Function.Bijective, and_iff_right
    (by exact IsLocalization.map_injective_of_injective _ _ _ Subtype.val_injective),
    Localization.awayMap_surjective_iff]
  simp [mem_integralClosure_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
