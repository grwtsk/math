# LSeriesSummable_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c16ebf92-dd80-14b4-8ebd-a2889dcae734",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:342f682a-a264-a234-d5b2-975a0fd547c1",
  "kind": "lemma",
  "lexical_name": "LSeriesSummable_of_one_lt_re",
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
  "slug": "lseriessummable-of-one-lt-re--9fa109a619d3580c43195b0d",
  "source": {
    "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa109a619d3580c43195b0daf2e968183f49828d5e65e373a35001fd4e6bb3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:342f682a-a264-a234-d5b2-975a0fd547c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeriesSummable_of_one_lt_re (Φ : ZMod N → ℂ) {s : ℂ} (hs : 1 < re s) :
    LSeriesSummable (Φ ·) s := by
  let c := max' _ <| univ_nonempty.image (norm ∘ Φ)
  refine LSeriesSummable_of_bounded_of_one_lt_re (fun n _ ↦ le_max' _ _ ?_) (m := c) hs
  exact mem_image_of_mem _ (mem_univ _)

/--
The unique meromorphic function `ℂ → ℂ` which agrees with `∑' n : ℕ, Φ n / n ^ s` wherever the
latter is convergent. This is constructed as a linear combination of Hurwitz zeta functions.

Note that this is not the same as `LSeries Φ`: they agree in the convergence range, but
`LSeries Φ s` is defined to be `0` if `re s ≤ 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
