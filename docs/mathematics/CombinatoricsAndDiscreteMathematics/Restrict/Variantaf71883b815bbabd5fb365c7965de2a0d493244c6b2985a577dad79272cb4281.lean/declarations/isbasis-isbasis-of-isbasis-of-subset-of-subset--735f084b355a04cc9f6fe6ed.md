# IsBasis.isBasis_of_isBasis_of_subset_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c6aa93-07ee-334a-64ee-404667f4ff63",
  "kind": "theorem",
  "lexical_name": "IsBasis.isBasis_of_isBasis_of_subset_of_subset",
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
  "slug": "isbasis-isbasis-of-isbasis-of-subset-of-subset--735f084b355a04cc9f6fe6ed",
  "source": {
    "blob": "4a8f98cbe1ac4fcd4df398c0c8aeb698394ec21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 429,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:735f084b355a04cc9f6fe6edd45e0fc151de25b7717aef86c6b1f4e68725c9f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c6aa93-07ee-334a-64ee-404667f4ff63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBasis.isBasis_of_isBasis_of_subset_of_subset (hI : M.IsBasis I X) (hJ : M.IsBasis J Y)
    (hJX : J ⊆ X) (hIY : I ⊆ Y) : M.IsBasis I Y := by
  have hI' := hI.isBasis_subset (subset_inter hI.subset hIY) inter_subset_left
  have hJ' := hJ.isBasis_subset (subset_inter hJX hJ.subset) inter_subset_right
  exact hI'.transfer hJ' inter_subset_right hJ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f98cbe1ac4fcd4df398c0c8aeb698394ec21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
