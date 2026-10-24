# Tendsto.of_tendsto_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:febddc70-44a6-9d20-fd61-a2172ddb90e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06e9bf68-f027-2e58-e143-552698b68bb7",
  "kind": "theorem",
  "lexical_name": "Tendsto.of_tendsto_comp",
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
  "slug": "tendsto-of-tendsto-comp--81940419cfceef5294a7835c",
  "source": {
    "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81940419cfceef5294a7835c6f7c822cdee40a3470f6d40d17a6a68311190cd9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06e9bf68-f027-2e58-e143-552698b68bb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.of_tendsto_comp {f : α → β} {g : β → γ} {a : Filter α} {b : Filter β} {c : Filter γ}
    (hfg : Tendsto (g ∘ f) a c) (hg : comap g c ≤ b) : Tendsto f a b := by
  rw [tendsto_iff_comap] at hfg ⊢
  calc
    a ≤ comap (g ∘ f) c := hfg
    _ ≤ comap f b := by simpa [comap_comap] using comap_mono hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda3854d6a154b6568024ed5da75cf3763753cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
