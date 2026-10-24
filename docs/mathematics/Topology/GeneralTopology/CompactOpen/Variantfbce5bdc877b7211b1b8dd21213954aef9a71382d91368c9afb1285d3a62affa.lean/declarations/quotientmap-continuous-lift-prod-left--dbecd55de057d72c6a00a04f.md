# QuotientMap.continuous_lift_prod_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 491,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:723a47a4-9063-a29b-b4a5-3cca8f550209",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a6cbe48-a756-719f-c2b0-01220280dc75",
  "kind": "theorem",
  "lexical_name": "QuotientMap.continuous_lift_prod_left",
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
  "slug": "quotientmap-continuous-lift-prod-left--dbecd55de057d72c6a00a04f",
  "source": {
    "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbecd55de057d72c6a00a04f8e16e32702a9e7d16824e3a24b45f3a505b4be79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a6cbe48-a756-719f-c2b0-01220280dc75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuotientMap.continuous_lift_prod_left (hf : QuotientMap f) {g : X × Y → Z}
    (hg : Continuous fun p : X₀ × Y => g (f p.1, p.2)) : Continuous g := by
  let Gf : C(X₀, C(Y, Z)) := ContinuousMap.curry ⟨_, hg⟩
  have h : ∀ x : X, Continuous fun y => g (x, y) := by
    intro x
    obtain ⟨x₀, rfl⟩ := hf.surjective x
    exact (Gf x₀).continuous
  let G : X → C(Y, Z) := fun x => ⟨_, h x⟩
  have : Continuous G := by
    rw [hf.continuous_iff]
    exact Gf.continuous
  exact ContinuousMap.continuous_uncurry_of_continuous ⟨G, this⟩
#align quotient_map.continuous_lift_prod_left QuotientMap.continuous_lift_prod_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15503c9e88d9b8ae31b570bd697c92899c165c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
