# Real.iSup_pow_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98eddf26-7597-fac9-7b4f-6fbb3c86d534",
  "kind": "lemma",
  "lexical_name": "Real.iSup_pow_of_ne_zero",
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
  "slug": "real-isup-pow-of-ne-zero--2b4c7c8b83f6acf4ad0f1191",
  "source": {
    "blob": "012e5a662d82bdd8ba92625640ae63c8e257ffb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4c7c8b83f6acf4ad0f1191ae4ef218e87786c698214b0bebd71f0c66ae0fc4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98eddf26-7597-fac9-7b4f-6fbb3c86d534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Real.iSup_pow_of_ne_zero {f : ι → ℝ} (hf : ∀ i, 0 ≤ f i) (hn : n ≠ 0) :
    (⨆ i, f i) ^ n = ⨆ i, f i ^ n := by
  cases isEmpty_or_nonempty ι
  · simp [hn]
  · exact iSup_pow hf _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012e5a662d82bdd8ba92625640ae63c8e257ffb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
