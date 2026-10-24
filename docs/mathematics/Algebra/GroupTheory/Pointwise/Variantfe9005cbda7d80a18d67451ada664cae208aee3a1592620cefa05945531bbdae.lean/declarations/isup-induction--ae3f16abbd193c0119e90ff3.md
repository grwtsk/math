# iSup_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed76afc5-2417-3bf0-ba7d-b931b0c53a58",
  "kind": "theorem",
  "lexical_name": "iSup_induction",
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
  "slug": "isup-induction--ae3f16abbd193c0119e90ff3",
  "source": {
    "blob": "69f17308e6b72d3dcd99c04c51b742513f7eefac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 184,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3f16abbd193c0119e90ff34487858167ca6f21dd93b6d5ae455c5d15ef464f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed76afc5-2417-3bf0-ba7d-b931b0c53a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_induction {ι : Sort*} (S : ι → Subgroup G) {C : G → Prop} {x : G} (hx : x ∈ ⨆ i, S i)
    (mem : ∀ (i), ∀ x ∈ S i, C x) (one : C 1) (mul : ∀ x y, C x → C y → C (x * y)) : C x := by
  rw [iSup_eq_closure] at hx
  induction hx using closure_induction'' with
  | one => exact one
  | mem x hx =>
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx
    exact mem _ _ hi
  | inv_mem x hx =>
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx
    exact mem _ _ (inv_mem hi)
  | mul x y _ _ ihx ihy => exact mul x y ihx ihy

/-- A dependent version of `Subgroup.iSup_induction`. -/
@[to_additive (attr := elab_as_elim) "A dependent version of `AddSubgroup.iSup_induction`. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f17308e6b72d3dcd99c04c51b742513f7eefac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
