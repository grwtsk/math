# vector₂_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4cb8afacbb397f3713921fd9b2e41658893545e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1635,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a26f7d7-18d5-a6b3-2442-6f9b5063b6a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b944ef0-a400-6cf3-4d0e-539f486a01f0",
  "kind": "theorem",
  "lexical_name": "vector₂_induction",
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
  "slug": "vector-induction--d9ac4d295e218d687f59a9d9",
  "source": {
    "blob": "e4cb8afacbb397f3713921fd9b2e41658893545e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1649,
    "line": 1635,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9ac4d295e218d687f59a9d98ee0e10785e4ef12691ff30b921ae245ff5a493d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b944ef0-a400-6cf3-4d0e-539f486a01f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1635–1649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vector₂_induction (P : Vector (Vector α n) m → Prop)
    (of : ∀ (xss : Array (Array α)) (h₁ : xss.size = m) (h₂ : ∀ xs ∈ xss, xs.size = n),
      P (mk (xss.attach.map (fun ⟨xs, m⟩ => mk xs (h₂ xs m))) (by simpa using h₁)))
    (xss : Vector (Vector α n) m) : P xss := by
  specialize of (xss.map toArray).toArray (by simp) (by simp)
  simpa [Array.map_attach_eq_pmap, Array.pmap_map] using of

/--
Use this as `induction ass using vector₃_induction` on a hypothesis of the form `ass : Vector (Vector (Vector α n) m) k`.
The hypothesis `ass` will be replaced with a hypothesis `ass : Array (Array (Array α))`
along with additional hypotheses `h₁ : ass.size = k`, `h₂ : ∀ xs ∈ ass, xs.size = m`,
and `h₃ : ∀ xs ∈ ass, ∀ x ∈ xs, x.size = n`.
Appearances of the original `ass` in the goal will be replaced with
`Vector.mk (xss.attach.map (fun ⟨xs, m⟩ => Vector.mk (xs.attach.map (fun ⟨x, m'⟩ => Vector.mk x ⋯)) ⋯)) ⋯`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean#L1635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cb8afacbb397f3713921fd9b2e41658893545e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
