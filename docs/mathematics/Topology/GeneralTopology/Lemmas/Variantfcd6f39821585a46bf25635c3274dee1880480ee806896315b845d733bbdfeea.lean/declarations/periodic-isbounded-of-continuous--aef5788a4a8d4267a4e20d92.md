# Periodic.isBounded_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "615cb20571243b984ac63e76d8455bbf02842049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20c7448e-3f71-1704-a939-de56b5c40cc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37e7e7d7-353a-2bf5-2afd-c2b78fb38200",
  "kind": "theorem",
  "lexical_name": "Periodic.isBounded_of_continuous",
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
  "slug": "periodic-isbounded-of-continuous--aef5788a4a8d4267a4e20d92",
  "source": {
    "blob": "615cb20571243b984ac63e76d8455bbf02842049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef5788a4a8d4267a4e20d925c0dcf7e20e03c706813d0e8d43a171828f29940",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37e7e7d7-353a-2bf5-2afd-c2b78fb38200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Periodic.isBounded_of_continuous [PseudoMetricSpace α] {f : ℝ → α} {c : ℝ}
    (hp : Periodic f c) (hc : c ≠ 0) (hf : Continuous f) : IsBounded (range f) :=
  (hp.compact_of_continuous hc hf).isBounded

end Function

end Periodic

section Monotone

variable {ι : Type*} [Preorder ι] [Nonempty ι]

/-- A monotone, bounded above sequence `f : ℕ → ℝ` on `Ici k` has the finite
limit `sSup (f '' Ici k)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `615cb20571243b984ac63e76d8455bbf02842049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
