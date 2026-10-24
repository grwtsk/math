# continuous_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bddad040d8697e3f3bcf8c400b2337d78a106b5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cd69c51-00c8-73d7-3356-893d4795a4bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd18c35a-a072-ee89-d2c0-04b832918354",
  "kind": "theorem",
  "lexical_name": "continuous_of_monotone",
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
  "slug": "continuous-of-monotone--ed8250d64278801ff698cdbe",
  "source": {
    "blob": "bddad040d8697e3f3bcf8c400b2337d78a106b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed8250d64278801ff698cdbe5ddda7fb79cc0509f820924f4eea79c88704530f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd18c35a-a072-ee89-d2c0-04b832918354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_monotone
    {Y : Type*} (Q : OperationalRelation Y) (f : X → Y)
    (hmono : R.MonotoneTo Q f) :
    @Continuous X Y R.operationalTopology Q.operationalTopology f := by
  rw [continuous_def]
  intro U hU
  change ∀ x ∈ f ⁻¹' U, ∀ y, R.rel y x → y ∈ f ⁻¹' U
  change ∀ x ∈ U, ∀ y, Q.rel y x → y ∈ U at hU
  intro x hx y hyx
  exact hU (f x) hx (f y) (hmono hyx)

/-- Continuity recovers operational monotonicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bddad040d8697e3f3bcf8c400b2337d78a106b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
