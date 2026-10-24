# eventually_forall_ge_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eca134eab3742d3dca8906254f0cf1fe928b7dd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b53b72c6-8bd1-04ca-6d30-18dc882ee014",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75da08f8-0f8d-f688-ca49-3a6488e44a39",
  "kind": "theorem",
  "lexical_name": "eventually_forall_ge_atTop",
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
  "slug": "eventually-forall-ge-attop--841ee94332348cd8c5892fa3",
  "source": {
    "blob": "eca134eab3742d3dca8906254f0cf1fe928b7dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841ee94332348cd8c5892fa3a4f875957e3cb13867859a905d78a113b6183faf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75da08f8-0f8d-f688-ca49-3a6488e44a39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_forall_ge_atTop [Preorder α] {p : α → Prop} :
    (∀ᶠ x in atTop, ∀ y, x ≤ y → p y) ↔ ∀ᶠ x in atTop, p x := by
  refine ⟨fun h ↦ h.mono fun x hx ↦ hx x le_rfl, fun h ↦ ?_⟩
  rcases (hasBasis_iInf_principal_finite _).eventually_iff.1 h with ⟨S, hSf, hS⟩
  refine mem_iInf_of_iInter hSf (V := fun x ↦ Ici x.1) (fun _ ↦ Subset.rfl) fun x hx y hy ↦ ?_
  simp only [mem_iInter] at hS hx
  exact hS fun z hz ↦ le_trans (hx ⟨z, hz⟩) hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca134eab3742d3dca8906254f0cf1fe928b7dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
