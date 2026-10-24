# comap_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d4237b2ac3ae77ef45ee7edd5e2df82b9cb1abd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41320cc09de94b691658557d424c02f2e1a23999aa9d327fce25ee74adb2185.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45fc23eb-44e8-a66b-b78d-962cb8a78d6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ec0336f-d6ca-c002-acb3-7390224bbdf1",
  "kind": "theorem",
  "lexical_name": "comap_injective",
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
  "slug": "comap-injective--8cc2c36694356c4f5b43f8a0",
  "source": {
    "blob": "8d4237b2ac3ae77ef45ee7edd5e2df82b9cb1abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 460,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variantd41320cc09de94b691658557d424c02f2e1a23999aa9d327fce25ee74adb2185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc2c36694356c4f5b43f8a019c5650166927b4c5c8069e6ffd414c2457630b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variantd41320cc09de94b691658557d424c02f2e1a23999aa9d327fce25ee74adb2185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec0336f-d6ca-c002-acb3-7390224bbdf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_injective [T0Space β] : Injective (comap : C(α, β) → FrameHom (Opens β) (Opens α)) :=
  fun f g h =>
  ContinuousMap.ext fun a =>
    Inseparable.eq <|
      inseparable_iff_forall_isOpen.2 fun s hs =>
        have : comap f ⟨s, hs⟩ = comap g ⟨s, hs⟩ := DFunLike.congr_fun h ⟨_, hs⟩
        show a ∈ f ⁻¹' s ↔ a ∈ g ⁻¹' s from Set.ext_iff.1 (coe_inj.2 this) a

/-- A homeomorphism induces an order-preserving equivalence on open sets, by taking comaps. -/
@[simps -fullyApplied apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variantd41320cc09de94b691658557d424c02f2e1a23999aa9d327fce25ee74adb2185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variantd41320cc09de94b691658557d424c02f2e1a23999aa9d327fce25ee74adb2185.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4237b2ac3ae77ef45ee7edd5e2df82b9cb1abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
