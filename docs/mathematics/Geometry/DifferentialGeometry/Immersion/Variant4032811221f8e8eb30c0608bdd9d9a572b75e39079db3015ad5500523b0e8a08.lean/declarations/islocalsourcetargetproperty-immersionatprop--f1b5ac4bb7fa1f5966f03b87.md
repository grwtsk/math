# isLocalSourceTargetProperty_immersionAtProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a3888e3-f224-abdf-706b-d3983eb67b16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4af4437-81ad-3dd6-3069-39c056d295c2",
  "kind": "lemma",
  "lexical_name": "isLocalSourceTargetProperty_immersionAtProp",
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
  "slug": "islocalsourcetargetproperty-immersionatprop--f1b5ac4bb7fa1f5966f03b87",
  "source": {
    "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 154,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1b5ac4bb7fa1f5966f03b87ae70a0487b80a926a039ae3eef545b42f58f6150",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4af4437-81ad-3dd6-3069-39c056d295c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalSourceTargetProperty_immersionAtProp :
    IsLocalSourceTargetProperty (ImmersionAtProp F I J M N) where
  mono_source {f φ ψ s} hs := fun ⟨equiv, hf⟩ ↦ ⟨equiv, hf.mono (by simp; grind)⟩
  congr {f g φ ψ} hfg := by
    intro ⟨equiv, hf⟩
    refine ⟨equiv, EqOn.trans (fun x hx ↦ ?_) (hf.mono (by simp))⟩
    have : ((φ.extend I).symm) x ∈ φ.source := by simp_all
    grind

variable (F I J n) in
/-- `f : M → N` is a `C^n` immersion at `x` if there are charts `φ` and `ψ` of `M` and `N`
around `x` and `f x`, respectively such that in these charts, `f` looks like `u ↦ (u, 0)`.
Additionally, we demand that `f` map `φ.source` into `ψ.source`.

NB. We don't know the particular atlases used for `M` and `N`, so asking for `φ` and `ψ` to be
in the `atlas` would be too optimistic: lying in the `maximalAtlas` is sufficient.

This definition has a fixed parameter `F`, which is a choice of complement of `E` in `E'`:
being an immersion at `x` includes a choice of linear isomorphism between `E × F` and `E'`.
While the particular choice of complement is often not important, choosing a complement is useful
in some settings, such as proving that embedded submanifolds are locally given either by an
immersion or a submersion.
Unless you have a particular reason, prefer to use `IsImmersionAt` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7789456c476b7e65495bc8ecaecf076cf0d9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
