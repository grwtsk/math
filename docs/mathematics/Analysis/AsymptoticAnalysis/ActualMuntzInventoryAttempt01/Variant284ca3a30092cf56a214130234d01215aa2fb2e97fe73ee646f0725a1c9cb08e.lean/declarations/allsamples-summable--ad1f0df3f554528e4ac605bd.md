# allSamples_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba96acb8-89c0-6679-8063-9a86d8edf8e3",
  "kind": "theorem",
  "lexical_name": "allSamples_summable",
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
  "slug": "allsamples-summable--ad1f0df3f554528e4ac605bd",
  "source": {
    "blob": "8c360123f7b89d84fedf83e3940eaee1ae0a5276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad1f0df3f554528e4ac605bd93a13025ba6ebade6dcd823947c87ecc7488301f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba96acb8-89c0-6679-8063-9a86d8edf8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allSamples_summable {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    Summable (fun n : ℕ => actualLogSource A ((n : ℝ)*x)) := by
  apply summable_of_ne_finset_zero (s:=Icc 0 (upperInventory A x))
  intro n hn
  have hn' : upperInventory A x < n := by simpa only [mem_Icc,Nat.zero_le,true_and,not_le] using hn
  exact sample_zero_above_inventory hA hx n hn'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c360123f7b89d84fedf83e3940eaee1ae0a5276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
