# inter_indicator_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 730,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea91755b-8084-a882-156e-25fdcc327b9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3929bb1b-61e4-775c-0b1c-1b2281aee135",
  "kind": "theorem",
  "lexical_name": "inter_indicator_mul",
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
  "slug": "inter-indicator-mul--983218bb9aba30069b3c9b28",
  "source": {
    "blob": "ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 730,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:983218bb9aba30069b3c9b2899cd1243db2a2dd96f9df6abe2abef8aeaa28d8b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3929bb1b-61e4-775c-0b1c-1b2281aee135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_indicator_mul {t1 t2 : Set α} (f g : α → M) (x : α) :
    (t1 ∩ t2).indicator (fun x => f x * g x) x = t1.indicator f x * t2.indicator g x := by
  rw [← Set.indicator_indicator]
  simp_rw [indicator]
  split_ifs <;> simp
#align set.inter_indicator_mul Set.inter_indicator_mul

end MulZeroClass

section MulZeroOneClass

variable [MulZeroOneClass M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
