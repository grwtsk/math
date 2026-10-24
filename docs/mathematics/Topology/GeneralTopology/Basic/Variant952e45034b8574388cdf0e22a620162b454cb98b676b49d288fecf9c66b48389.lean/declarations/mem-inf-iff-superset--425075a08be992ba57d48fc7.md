# mem_inf_iff_superset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:227d0813-99c0-8735-1e0b-3fef7258fc13",
  "kind": "theorem",
  "lexical_name": "mem_inf_iff_superset",
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
  "slug": "mem-inf-iff-superset--425075a08be992ba57d48fc7",
  "source": {
    "blob": "7084d07ff0cc5bcd9188744def52f8656690516c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:425075a08be992ba57d48fc7716d211f1eca8f0338d3b4dfc5027d1992241715",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:227d0813-99c0-8735-1e0b-3fef7258fc13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_inf_iff_superset {f g : Filter α} {s : Set α} :
    s ∈ f ⊓ g ↔ ∃ t₁ ∈ f, ∃ t₂ ∈ g, t₁ ∩ t₂ ⊆ s :=
  ⟨fun ⟨t₁, h₁, t₂, h₂, Eq⟩ => ⟨t₁, h₁, t₂, h₂, Eq ▸ Subset.rfl⟩, fun ⟨_, h₁, _, h₂, sub⟩ =>
    mem_inf_of_inter h₁ h₂ sub⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7084d07ff0cc5bcd9188744def52f8656690516c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
