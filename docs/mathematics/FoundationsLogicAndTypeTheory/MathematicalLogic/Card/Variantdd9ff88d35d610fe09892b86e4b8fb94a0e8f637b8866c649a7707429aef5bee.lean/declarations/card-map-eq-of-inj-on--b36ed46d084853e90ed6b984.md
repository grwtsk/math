# card_map_eq_of_inj_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0484b68-c237-7730-8cef-67945a700520",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d80c5c8-c3b9-874e-9a33-db97d983067b",
  "kind": "theorem",
  "lexical_name": "card_map_eq_of_inj_on",
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
  "slug": "card-map-eq-of-inj-on--b36ed46d084853e90ed6b984",
  "source": {
    "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b36ed46d084853e90ed6b9843b783f33fb9c764dd27c57478311d8af619e26ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d80c5c8-c3b9-874e-9a33-db97d983067b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_map_eq_of_inj_on {f : α → β} {as : List α} :
    inj_on f as → card (as.map f) = card as := by
  induction as with
  | nil => simp
  | cons a as ih =>
    cases Decidable.em (f a ∈ map f as) with
    | inl h =>
      intro inj_on'
      cases (exists_of_mem_map h) with
      | intro x hx =>
        have : x = a := inj_on' (mem_cons_of_mem _ hx.1) (mem_cons_self ..) hx.2
        have h1 : a ∈ as := this ▸ hx.1
        have h2 : inj_on f as := inj_on_of_subset inj_on' (subset_cons _ _)
        rw [map, card_cons_of_mem h, ih h2, card_cons_of_mem h1]
    | inr h =>
      intro inj_on'
      have h1 : a ∉ as := fun h'' ↦ h (mem_map_of_mem _ h'')
      have h2 : inj_on f as := inj_on_of_subset inj_on' (subset_cons _ _)
      rw [map, card_cons_of_not_mem h, card_cons_of_not_mem h1, ih h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd16ff4fd9099651c4d940d4387f16b51b86395f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
