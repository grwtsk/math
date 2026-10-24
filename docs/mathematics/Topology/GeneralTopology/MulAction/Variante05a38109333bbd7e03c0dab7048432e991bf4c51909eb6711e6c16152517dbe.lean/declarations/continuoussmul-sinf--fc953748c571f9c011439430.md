# continuousSMul_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "134113ff690bb9685970d79c1bab63af9cecc7b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e25625b-d0f1-bbdc-b844-b3c0531227ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd487fb9-c1b3-bfc9-cf3c-bcca8261e003",
  "kind": "theorem",
  "lexical_name": "continuousSMul_sInf",
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
  "slug": "continuoussmul-sinf--fc953748c571f9c011439430",
  "source": {
    "blob": "134113ff690bb9685970d79c1bab63af9cecc7b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc953748c571f9c0114394304ff8a42402dafba852b651c2270bb0a3f0912f36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd487fb9-c1b3-bfc9-cf3c-bcca8261e003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousSMul_sInf {ts : Set (TopologicalSpace X)}
    (h : ∀ t ∈ ts, @ContinuousSMul M X _ _ t) : @ContinuousSMul M X _ _ (sInf ts) :=
  let _ := sInf ts
  { continuous_smul := by
      -- Porting note: needs `( :)`
      rw [← (sInf_singleton (a := ‹TopologicalSpace M›) :)]
      exact
        continuous_sInf_rng.2 fun t ht =>
          continuous_sInf_dom₂ (Eq.refl _) ht
            (@ContinuousSMul.continuous_smul _ _ _ _ t (h t ht)) }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `134113ff690bb9685970d79c1bab63af9cecc7b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
