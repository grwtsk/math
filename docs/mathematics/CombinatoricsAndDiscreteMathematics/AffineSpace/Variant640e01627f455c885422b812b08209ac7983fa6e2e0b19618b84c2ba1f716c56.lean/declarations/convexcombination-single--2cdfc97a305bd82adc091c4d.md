# convexCombination_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b90d6df395ddf0cc7867f46e41c0a369f580e49b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c252676-bc38-3053-2926-659dc6d1c6a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28c046ad-e428-be32-7a4d-9e8b19a25e77",
  "kind": "theorem",
  "lexical_name": "convexCombination_single",
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
  "slug": "convexcombination-single--2cdfc97a305bd82adc091c4d",
  "source": {
    "blob": "b90d6df395ddf0cc7867f46e41c0a369f580e49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cdfc97a305bd82adc091c4d6ae5618d9afe5383f6c5ce65ca4ca0aeaefcc4c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28c046ad-e428-be32-7a4d-9e8b19a25e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexCombination_single (x : P) :
    convexCombination (StdSimplex.single x : StdSimplex R P) = x := by
  simp only [convexCombination, StdSimplex.single]
  rw [Finsupp.support_single _ one_ne_zero]
  exact ({x} : Finset P).affineCombination_of_eq_one_of_eq_zero _ _
    (Finset.mem_singleton_self x) Finsupp.single_eq_same fun j _ hne => Finsupp.single_eq_of_ne hne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90d6df395ddf0cc7867f46e41c0a369f580e49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
