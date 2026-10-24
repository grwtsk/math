# IicProdIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00c7ad453e48e6d8a8c21fd283c9d0a4cf98998ae73ab9f4496c7a221f8787bf",
  "kind": "def",
  "lexical_name": "IicProdIoc",
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
  "slug": "iicprodioc--30b8bcbf415572c9ec481e8e",
  "source": {
    "blob": "1afda3ef1487ee7277241c4ca2ce7fd4630967e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/Analysis/MeasureTheory/Maps/Variant64f042f5dc74d2662bf0de65e0f3fec1c3798aa80b5a5bc1816fb4afd60993c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b8bcbf415572c9ec481e8ed9af8a4d2096419b2d954dff118f967b91e21467",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Maps/Variant64f042f5dc74d2662bf0de65e0f3fec1c3798aa80b5a5bc1816fb4afd60993c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00c7ad453e48e6d8a8c21fd283c9d0a4cf98998ae73ab9f4496c7a221f8787bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IicProdIoc {a b : ι} (hab : a ≤ b) :
    ((Π i : Iic a, X i) × (Π i : Ioc a b, X i)) ≃ᵐ Π i : Iic b, X i where
  toFun x i := if h : i ≤ a then x.1 ⟨i, mem_Iic.2 h⟩
    else x.2 ⟨i, mem_Ioc.2 ⟨not_le.1 h, mem_Iic.1 i.2⟩⟩
  invFun x := ⟨fun i ↦ x ⟨i.1, Iic_subset_Iic.2 hab i.2⟩, fun i ↦ x ⟨i.1, Ioc_subset_Iic_self i.2⟩⟩
  left_inv := fun x ↦ by
    ext i
    · simp [mem_Iic.1 i.2]
    · simp [not_le.2 (mem_Ioc.1 i.2).1]
  right_inv := fun x ↦ funext fun i ↦ by
    by_cases hi : i.1 ≤ a <;> simp [hi]
  measurable_toFun := by
    refine .of_eval (fun x ↦ ?_)
    by_cases h : x ≤ a
    · simpa [h] using measurable_fst.eval
    · simpa [h] using measurable_snd.eval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Maps/Variant64f042f5dc74d2662bf0de65e0f3fec1c3798aa80b5a5bc1816fb4afd60993c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Maps/Variant64f042f5dc74d2662bf0de65e0f3fec1c3798aa80b5a5bc1816fb4afd60993c6.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1afda3ef1487ee7277241c4ca2ce7fd4630967e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
