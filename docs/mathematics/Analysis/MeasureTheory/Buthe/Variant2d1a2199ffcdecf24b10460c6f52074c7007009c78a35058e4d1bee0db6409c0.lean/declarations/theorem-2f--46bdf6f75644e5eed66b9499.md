# theorem_2f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd55c4b873fbac538daa1442acebeefde7f68111",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bdbd3b2-939d-8ede-3fd3-32cb7ee32e35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43ea85bd-4405-7941-7d82-56afd09160e7",
  "kind": "theorem",
  "lexical_name": "theorem_2f",
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
  "slug": "theorem-2f--46bdf6f75644e5eed66b9499",
  "source": {
    "blob": "dd55c4b873fbac538daa1442acebeefde7f68111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 83,
    "path": "GRWTSK/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46bdf6f75644e5eed66b94990b565afcb2959def59982aa6d83ef85ba09aa24d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43ea85bd-4405-7941-7d82-56afd09160e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_2f {x : ℝ} (hx1 : 2 ≤ x) (hx2 : x ≤ 10 ^ 19) : li x - pi x > 0 := by sorry

/- Table1.UpperandlowerboundsM± ψ(x)for t−ψ(t) √t in[x,2x] x M− ψ(x) M+ ψ(x) x M− ψ(x) M+ ψ(x) 1010 −.77 .85 1012 −.80 .81 2×1010 −.75 .64 2×1012 −.79 .76 4×1010 −.73 .80 4×1012 −.73 .73 8×1010 −.80 .86 8×1012 −.80 .76 16×1010 −.88 .68 16×1012 −.80 .68 32×1010 −.88 .78 32×1012 −.67 .93 64×1010 −.66 .74 64×1012 −.78 .77 x M− ψ(x) M+ ψ(x) x M− ψ(x) M+ ψ(x) 1014 −.79 .72 1016 −.88 .74 2×1014 −.60 .76 2×1016 −.87 .70 4×1014 −.65 .73 4×1016 −.65 .73 8×1014 −.81 .88 8×1016 −.82 .77 16×1014 −.66 .86 16×1016 −.71 .92 32×1014 −.74 .86 32×1016 −.78 .71 64×1014 −.73 .66 64×1016 −.94 .82 128×1016 −.94 .75 256×1016 −.82 .86 512×1016 −.83 .94 -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd55c4b873fbac538daa1442acebeefde7f68111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
