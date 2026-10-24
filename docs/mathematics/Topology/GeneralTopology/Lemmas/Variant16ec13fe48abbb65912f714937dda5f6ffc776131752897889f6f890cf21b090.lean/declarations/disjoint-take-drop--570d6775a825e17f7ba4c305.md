# disjoint_take_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cac2fa5d804016e25f6084d0a442c77d3156de84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc926ad3-4abc-53b2-49d1-5852659b5dad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7ee6691-4956-fa2d-d787-d9793e4bd9d4",
  "kind": "theorem",
  "lexical_name": "disjoint_take_drop",
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
  "slug": "disjoint-take-drop--570d6775a825e17f7ba4c305",
  "source": {
    "blob": "cac2fa5d804016e25f6084d0a442c77d3156de84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570d6775a825e17f7ba4c3059288ae106179e903da417e65cca024257e8128e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ee6691-4956-fa2d-d787-d9793e4bd9d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_take_drop : ∀ {l : List α}, l.Nodup → m ≤ n → Disjoint (l.take m) (l.drop n)
  | [], _, _ => by simp
  | x :: xs, hl, h => by
    cases m <;> cases n <;> simp only [disjoint_cons_left, drop, disjoint_nil_left,
      take]
    · case succ.zero => cases h
    · cases hl with | cons h₀ h₁ =>
      refine ⟨fun h => h₀ _ (mem_of_mem_drop h) rfl, ?_⟩
      exact disjoint_take_drop h₁ (Nat.le_of_succ_le_succ h)

/-! ### Pairwise -/

attribute [simp, grind ←] Pairwise.nil

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cac2fa5d804016e25f6084d0a442c77d3156de84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
