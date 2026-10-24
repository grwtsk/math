# tendstoUniformlyOn_of_forall_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d19f97f1-dec7-d077-933c-6520b5b44c86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3491c393-90ac-2af4-01cb-f0b84299f4a4",
  "kind": "lemma",
  "lexical_name": "tendstoUniformlyOn_of_forall_tendsto",
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
  "slug": "tendstouniformlyon-of-forall-tendsto--494addbd99150bcfe3477368",
  "source": {
    "blob": "ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:494addbd99150bcfe3477368fb1676dc5e178d671de3e721c7842b53531825f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3491c393-90ac-2af4-01cb-f0b84299f4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoUniformlyOn_of_forall_tendsto {s : Set α} (hs : IsCompact s)
    (hF_cont : ∀ i, ContinuousOn (F i) s) (hF_anti : ∀ x ∈ s, Antitone (F · x))
    (hf : ContinuousOn f s) (h_tendsto : ∀ x ∈ s, Tendsto (F · x) atTop (𝓝 (f x))) :
    TendstoUniformlyOn F f atTop s :=
  Monotone.tendstoUniformlyOn_of_forall_tendsto (G := Gᵒᵈ) hs hF_cont hF_anti hf h_tendsto

end Antitone

end Unbundled

namespace ContinuousMap

variable {F : ι → C(α, G)} {f : C(α, G)}

/-- **Dini's theorem**: if `F n` is a monotone increasing collection of continuous functions
converging pointwise to a continuous function `f`, then `F n` converges to `f` in the
compact-open topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
