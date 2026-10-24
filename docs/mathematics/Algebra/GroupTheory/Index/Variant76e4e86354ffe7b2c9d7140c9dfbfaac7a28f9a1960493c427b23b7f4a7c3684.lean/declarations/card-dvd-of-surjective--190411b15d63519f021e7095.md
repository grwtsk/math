# card_dvd_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "653c306a99b2e16788cbd1d5bc101977671f9464",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcc76a42-81fd-3880-d2a1-515f234fa106",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0de55b01-a6ef-4050-5483-cb1e16fe4b7a",
  "kind": "theorem",
  "lexical_name": "card_dvd_of_surjective",
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
  "slug": "card-dvd-of-surjective--190411b15d63519f021e7095",
  "source": {
    "blob": "653c306a99b2e16788cbd1d5bc101977671f9464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 223,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:190411b15d63519f021e709550f3f8013f664df188202b26d8fb681ff86eb9ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de55b01-a6ef-4050-5483-cb1e16fe4b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_dvd_of_surjective (f : G →* G') (hf : Function.Surjective f) :
    Nat.card G' ∣ Nat.card G := by
  rw [← Nat.card_congr (QuotientGroup.quotientKerEquivOfSurjective f hf).toEquiv]
  exact Dvd.intro_left (Nat.card f.ker) f.ker.card_mul_index

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653c306a99b2e16788cbd1d5bc101977671f9464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
