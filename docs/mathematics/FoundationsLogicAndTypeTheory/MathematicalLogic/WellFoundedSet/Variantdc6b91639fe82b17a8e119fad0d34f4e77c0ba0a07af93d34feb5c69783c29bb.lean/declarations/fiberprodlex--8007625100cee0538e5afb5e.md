# fiberProdLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef0f107-81a5-020f-1de5-8024af89e5aa",
  "kind": "theorem",
  "lexical_name": "fiberProdLex",
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
  "slug": "fiberprodlex--8007625100cee0538e5afb5e",
  "source": {
    "blob": "f81ccd361094b729fb4ea6c4891dcec8b7592b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 863,
    "line": 850,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8007625100cee0538e5afb5e3516b102348a16181126b11adb3a6cbc886518a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef0f107-81a5-020f-1de5-8024af89e5aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fiberProdLex [Preorder α] [Preorder β] {s : Set (α ×ₗ β)}
    (hαβ : s.IsPWO) (a : α) : {y | toLex (a, y) ∈ s}.IsPWO := by
  let f : α ×ₗ β → β := fun x => (ofLex x).2
  have h : {y | toLex (a, y) ∈ s} = f '' (s ∩ (fun x ↦ (ofLex x).1) ⁻¹' {a}) := by
    ext x
    simp [f]
  rw [h]
  apply IsPWO.image_of_monotoneOn (hαβ.mono inter_subset_left)
  rintro b ⟨-, hb⟩ c ⟨-, hc⟩ hbc
  simp only [mem_preimage, mem_singleton_iff] at hb hc
  have : (ofLex b).1 < (ofLex c).1 ∨ (ofLex b).1 = (ofLex c).1 ∧ f b ≤ f c :=
    Prod.Lex.toLex_le_toLex.mp hbc
  simp_all only [lt_self_iff_false, true_and, false_or]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81ccd361094b729fb4ea6c4891dcec8b7592b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
