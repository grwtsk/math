# erdos_208.parts.ii

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eeb190c67aa3a2f4ac69be4da77ac0c012932d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0acd61f-1f3c-c59b-a5fc-410f87b7534c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bd0c76c-543b-45cc-7bb7-d721c3ba2ee4",
  "kind": "theorem",
  "lexical_name": "erdos_208.parts.ii",
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
  "slug": "erdos-208-parts-ii--0d9bf567e216f5836123adde",
  "source": {
    "blob": "2eeb190c67aa3a2f4ac69be4da77ac0c012932d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9bf567e216f5836123adde39ec210f0156c116bfedd79f608ed7b773d8b2f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bd0c76c-543b-45cc-7bb7-d721c3ba2ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erdos_208.parts.ii : answer(sorry) ↔ ∃ (c : ℕ → ℝ), (c =o[atTop] (1 : ℕ → ℝ)) ∧ ∀ᶠ n in atTop,
      s (n + 1) - s n ≤ (1 + (c n)) * (π^2 / 6) * log (s n) / log (log (s n)) := by
  sorry

/--
In [Er79] Erdős says perhaps $s_{n+1} - s_n \ll \log s_n$, but he is 'very doubtful'.

[Er79] Erdős, Paul, __Some unconventional problems in number theory__. Math. Mag. (1979), 67-70.
-/
@[category research open, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eeb190c67aa3a2f4ac69be4da77ac0c012932d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
