# symmetric_combination_alt_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d804da7ff17157bb958bbbbe5b0182c2ac568e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53375f36-892f-264a-fd13-184ac3d654a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01cb8ed7-465b-7ffd-633b-4606ca430732",
  "kind": "theorem",
  "lexical_name": "symmetric_combination_alt_form",
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
  "slug": "symmetric-combination-alt-form--954c0d783df3931f29d41fe0",
  "source": {
    "blob": "6d804da7ff17157bb958bbbbe5b0182c2ac568e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:954c0d783df3931f29d41fe0dbbe8846380253841184408bb90b53821c6aacb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01cb8ed7-465b-7ffd-633b-4606ca430732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_combination_alt_form (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    1/Real.log (1 + t) + 1/Real.log (1 - t) =
    Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) :=
  symmetricLogCombination_alt t ht_pos ht_lt

/-! ### Definition of li(2)

The logarithmic integral li(2) = ∫₀² dt/log(t) has a singularity at t=1.
Using the symmetric form, we define:

  li(2) = ∫₀¹ (1/log(1+u) + 1/log(1-u)) du

This is absolutely convergent because:
1. The singularity at u=0 is removable (limit = 1)
2. The integrand is bounded (|g| ≤ 2)
-/

/-- Definition of li(2) as the integral of the symmetric combination.
    This sidesteps the principal value issues entirely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d804da7ff17157bb958bbbbe5b0182c2ac568e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
