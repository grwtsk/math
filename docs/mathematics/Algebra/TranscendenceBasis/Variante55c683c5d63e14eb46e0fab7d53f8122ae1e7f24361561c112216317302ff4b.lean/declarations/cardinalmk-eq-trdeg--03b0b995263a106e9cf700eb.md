# cardinalMk_eq_trdeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "201b37f7304ceebf599c6bbd796bf3728fdfd9e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59fd94ef-30fe-c7fb-4adf-069fe71c9263",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92b47b76-ec93-2d27-877f-c2e2abc66605",
  "kind": "theorem",
  "lexical_name": "cardinalMk_eq_trdeg",
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
  "slug": "cardinalmk-eq-trdeg--03b0b995263a106e9cf700eb",
  "source": {
    "blob": "201b37f7304ceebf599c6bbd796bf3728fdfd9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 423,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03b0b995263a106e9cf700eb26a7b2f1744634f2cf17e52e6e4c31ca7a5be406",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92b47b76-ec93-2d27-877f-c2e2abc66605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_eq_trdeg {ι : Type w} {x : ι → A} (hx : IsTranscendenceBasis R x) :
    #ι = trdeg R A := by
  rw [← lift_id #ι, lift_cardinalMk_eq_trdeg hx, lift_id]

/-- Any two transcendence bases of a domain `A` have the same cardinality.
May fail if `A` is not a domain; see https://mathoverflow.net/a/144580. -/
@[stacks 030F]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201b37f7304ceebf599c6bbd796bf3728fdfd9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
