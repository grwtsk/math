# partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5aa4e4bc46b1cd70c549367fd30a9cf204ba2058dcbe6674ae10c29981c88349",
  "kind": "def",
  "lexical_name": "partition",
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
  "slug": "partition--dbdf4fee630732e2748ea77f",
  "source": {
    "blob": "7a3e407dea17535d37b4c9068d428ded1133472c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 589,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbdf4fee630732e2748ea77f34f2de052aec8c2ade61174989e30aaaabeca266",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5aa4e4bc46b1cd70c549367fd30a9cf204ba2058dcbe6674ae10c29981c88349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partition (p : α → Prop) [DecidablePred p] : Ordnode α → Ordnode α × Ordnode α
  | nil => (nil, nil)
  | node _ l x r =>
    let (l₁, l₂) := partition p l
    let (r₁, r₂) := partition p r
    if p x then (link l₁ x r₁, merge l₂ r₂) else (merge l₁ r₁, link l₂ x r₂)
#align ordnode.partition Ordnode.partition

/- warning: ordnode.map -> Ordnode.map is a dubious translation:
lean 3 declaration is
  forall {α : Type.{u1}} {β : Type.{u2}}, (α -> β) -> (Ordnode.{u1} α) -> (Ordnode.{u2} β)
but is expected to have type
  forall {α : Type.{u2}} {β : Type.{u1}}, (α -> β) -> (Ordnode.{u2} α) -> (Ordnode.{u1} β)
Case conversion may be inaccurate. Consider using '#align ordnode.map Ordnode.mapₓ'. -/
/-- O(n). Map a function across a tree, without changing the structure. Only valid when
the function is strictly monotone, i.e. `x < y → f x < f y`.

     partition (fun x ↦ x + 2) {1, 2, 4} = {2, 3, 6}
     partition (λ x : ℕ, x - 2) {1, 2, 4} = precondition violation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3e407dea17535d37b4c9068d428ded1133472c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
