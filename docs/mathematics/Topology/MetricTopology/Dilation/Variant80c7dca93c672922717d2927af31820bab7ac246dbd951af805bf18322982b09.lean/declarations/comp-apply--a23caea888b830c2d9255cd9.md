# comp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c74520f-681d-aef0-f0e4-12cb97617eb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc57dc68-79fc-6a08-b910-f60493a41446",
  "kind": "theorem",
  "lexical_name": "comp_apply",
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
  "slug": "comp-apply--a23caea888b830c2d9255cd9",
  "source": {
    "blob": "410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 321,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a23caea888b830c2d9255cd965e00dbc8a39931c8b80ebbc63595ab6c85af8be",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc57dc68-79fc-6a08-b910-f60493a41446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_apply (g : β →ᵈ γ) (f : α →ᵈ β) (x : α) : (g.comp f : α → γ) x = g (f x) :=
  rfl
#align dilation.comp_apply Dilation.comp_apply

-- Porting note: removed `simp` because it's difficult to auto prove `hne`
/-- Ratio of the composition `g.comp f` of two dilations is the product of their ratios. We assume
that there exist two points in `α` at extended distance neither `0` nor `∞` because otherwise
`Dilation.ratio (g.comp f) = Dilation.ratio f = 1` while `Dilation.ratio g` can be any number. This
version works for most general spaces, see also `Dilation.ratio_comp` for a version assuming that
`α` is a nontrivial metric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
