# character_innerProduct_eq_if

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b57e637fba452324ea1524fab02ca7f3896451cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17f1276c-0f74-3b68-c9fc-c9571b18fa18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9f699e5-1fc8-e16c-878f-24cd34e8ca54",
  "kind": "theorem",
  "lexical_name": "character_innerProduct_eq_if",
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
  "slug": "character-innerproduct-eq-if--6a409cc84b99cbb499cfb8a0",
  "source": {
    "blob": "b57e637fba452324ea1524fab02ca7f3896451cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 383,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a409cc84b99cbb499cfb8a0f1b49490ff71c86c2549b6d5a31f446a9f8efabf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9f699e5-1fc8-e16c-878f-24cd34e8ca54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem character_innerProduct_eq_if {n : Nat}
    [DecidableEq (WalshFourier.Frequency n)]
    (S T : WalshFourier.Frequency n) :
    WalshFourier.innerProduct
      (WalshFourier.characterFunction S)
      (WalshFourier.characterFunction T) =
      if S = T then (2 ^ n : Nat) else 0 := by
  rw [← characterProductSum_eq_innerProduct]
  exact characterProductSum_eq_if S T

/-- Distinct Walsh characters are orthogonal over `Hypercube.vertices`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b57e637fba452324ea1524fab02ca7f3896451cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
