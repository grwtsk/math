# add_self_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5badb0a9-c181-9a1d-2d49-6c356c0d701a",
  "kind": "theorem",
  "lexical_name": "add_self_monotoneOn",
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
  "slug": "add-self-monotoneon--0a0f088778519bef0fee7426",
  "source": {
    "blob": "3b6fcc1488eb89f563380a91eb64f578780d3815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0f088778519bef0fee74263f803e4d81eb3c37e1069480cbe56b3cf4a04f97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5badb0a9-c181-9a1d-2d49-6c356c0d701a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_self_monotoneOn {f : α → ℝ} {s : Set α} (hf : LocallyBoundedVariationOn f s)
    {a : α} (as : a ∈ s) : MonotoneOn (variationOnFromTo f s a + f) s := by
  rintro b bs c cs bc
  suffices f b - f c ≤ variationOnFromTo f s a c - variationOnFromTo f s a b by simp; linarith
  calc
    f b - f c ≤ |f c - f b| := by grw [le_abs_self (f b - f c), abs_sub_comm (f b) (f c)]
    _ ≤ variationOnFromTo f s a c - variationOnFromTo f s a b := abs_sub_le_sub_of_le hf as bs cs bc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6fcc1488eb89f563380a91eb64f578780d3815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
