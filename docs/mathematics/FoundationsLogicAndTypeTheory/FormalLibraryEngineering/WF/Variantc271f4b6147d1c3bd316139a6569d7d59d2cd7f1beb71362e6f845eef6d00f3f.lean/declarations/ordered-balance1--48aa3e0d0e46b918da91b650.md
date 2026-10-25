# Ordered.balance1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4520aa9ebb20e1785ae4abf6adab1b7d37642d69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f89c9bbc-b127-e8d2-5c21-ac61bd3589be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:969e76f8-0d1e-0fe1-e0dd-142ae15ec3e9",
  "kind": "theorem",
  "lexical_name": "Ordered.balance1",
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
  "slug": "ordered-balance1--48aa3e0d0e46b918da91b650",
  "source": {
    "blob": "4520aa9ebb20e1785ae4abf6adab1b7d37642d69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48aa3e0d0e46b918da91b6504895fc4628056eeb033b00556d5c5caa650262f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:969e76f8-0d1e-0fe1-e0dd-142ae15ec3e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Ordered.balance1 {l : RBNode α} {v : α} {r : RBNode α}
    (lv : l.All (cmpLT cmp · v)) (vr : r.All (cmpLT cmp v ·))
    (hl : l.Ordered cmp) (hr : r.Ordered cmp) : (balance1 l v r).Ordered cmp := by
  unfold balance1; split
  · next a x b y c =>
    have ⟨yv, _, cv⟩ := lv; have ⟨xy, yc, hx, hc⟩ := hl
    exact ⟨xy, ⟨yv, yc, yv.trans_l vr⟩, hx, cv, vr, hc, hr⟩
  · next a x b y c _ =>
    have ⟨_, _, yv, _, cv⟩ := lv; have ⟨ax, ⟨xy, xb, _⟩, ha, by_, yc, hb, hc⟩ := hl
    exact ⟨⟨xy, xy.trans_r ax, by_⟩, ⟨yv, yc, yv.trans_l vr⟩, ⟨ax, xb, ha, hb⟩, cv, vr, hc, hr⟩
  · exact ⟨lv, vr, hl, hr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4520aa9ebb20e1785ae4abf6adab1b7d37642d69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
