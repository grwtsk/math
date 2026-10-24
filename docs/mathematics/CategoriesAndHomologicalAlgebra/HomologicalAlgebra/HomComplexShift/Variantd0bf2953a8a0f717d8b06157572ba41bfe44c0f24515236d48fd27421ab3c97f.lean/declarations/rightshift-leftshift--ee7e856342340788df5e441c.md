# rightShift_leftShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8e212634b5f53e0741408ea2c3ee9cdd7d94893",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb0b87f9-a6e4-eaab-6be3-80f6388834e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34baf4cb-eea5-554b-1bfa-c79a98f0bcb2",
  "kind": "lemma",
  "lexical_name": "rightShift_leftShift",
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
  "slug": "rightshift-leftshift--ee7e856342340788df5e441c",
  "source": {
    "blob": "b8e212634b5f53e0741408ea2c3ee9cdd7d94893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 467,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee7e856342340788df5e441cecb27cf643fa23ca6820be6b364bd962d1bbcc50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34baf4cb-eea5-554b-1bfa-c79a98f0bcb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightShift_leftShift (a n' : ℤ) (hn' : n + a = n') :
    (γ.leftShift a n' hn').rightShift a n hn' =
      (a * n' + (a * (a - 1)) / 2).negOnePow • γ.shift a := by
  ext p q hpq
  simp only [rightShift_v _ a n hn' p q hpq (q + a) (by lia),
    leftShift_v _ a n' hn' p (q + a) (by lia) (p + a) (by lia), units_smul_v, shift_v']
  dsimp
  rw [id_comp, comp_id]

/-- The left and right shift of cochains commute only up to a sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e212634b5f53e0741408ea2c3ee9cdd7d94893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
