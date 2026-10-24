# isChain_iff_forall_rel_of_append_cons_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d741436d-9e79-b3c5-ae53-f84ef86e5260",
  "kind": "theorem",
  "lexical_name": "isChain_iff_forall_rel_of_append_cons_cons",
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
  "slug": "ischain-iff-forall-rel-of-append-cons-cons--ba893139a4e75659c897bbf6",
  "source": {
    "blob": "c23e7fa7242e8185f792c69469a411c8b0999b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba893139a4e75659c897bbf63c103a90491d00f3d8623c6bd097a7fc3739eb5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d741436d-9e79-b3c5-ae53-f84ef86e5260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isChain_iff_forall_rel_of_append_cons_cons {l : List α} :
    IsChain R l ↔ ∀ ⦃a b l₁ l₂⦄, l = l₁ ++ a :: b :: l₂ → R a b := by
  refine ⟨fun h _ _ _ _ eq => (isChain_append_cons_cons.mp (eq ▸ h)).2.1, ?_⟩
  induction l using twoStepInduction with
  | nil | singleton => grind
  | cons_cons head head' tail _ ih =>
    refine fun h ↦ isChain_cons_cons.mpr ⟨h (nil_append _).symm, ih _ fun ⦃a b l₁ l₂⦄ eq => ?_⟩
    apply h
    rw [eq, cons_append]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c23e7fa7242e8185f792c69469a411c8b0999b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
