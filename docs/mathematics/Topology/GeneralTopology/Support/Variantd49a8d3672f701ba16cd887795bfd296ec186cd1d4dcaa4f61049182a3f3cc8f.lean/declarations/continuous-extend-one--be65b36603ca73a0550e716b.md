# continuous_extend_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3e42133-a4e9-6e4d-8bfe-eab5ceddd166",
  "kind": "theorem",
  "lexical_name": "continuous_extend_one",
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
  "slug": "continuous-extend-one--be65b36603ca73a0550e716b",
  "source": {
    "blob": "da02e37a4f7990f23c54c42fcac72a5a2b61cdbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 351,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be65b36603ca73a0550e716b06d987f5c5ce290973f36e89770bdba9036128fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3e42133-a4e9-6e4d-8bfe-eab5ceddd166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_extend_one [TopologicalSpace β] {U : Set α'} (hU : IsOpen U) {f : U → β}
    (cont : Continuous f) (supp : HasCompactMulSupport f) :
    Continuous (Subtype.val.extend f 1) :=
  continuous_of_mulTSupport fun x h ↦ by
    rw [show x = ↑(⟨x, Subtype.coe_image_subset _ _
      (supp.mulTSupport_extend_one_subset continuous_subtype_val h)⟩ : U) by rfl,
      ← (hU.isOpenEmbedding_subtypeVal).continuousAt_iff, extend_comp Subtype.val_injective]
    exact cont.continuousAt

/-- If `f` has compact multiplicative support, then `f` tends to 1 at infinity. -/
@[to_additive /-- If `f` has compact support, then `f` tends to zero at infinity. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da02e37a4f7990f23c54c42fcac72a5a2b61cdbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
