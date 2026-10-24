# mem_filter_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee6ad77ee3befe5863cc58c91f784b0aa0564e07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4948a05-512c-266f-e4e0-808f9ce337e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9768ea3-86e2-0550-162b-1d7297425da9",
  "kind": "theorem",
  "lexical_name": "mem_filter_univ",
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
  "slug": "mem-filter-univ--c05e688ad03848150ed36b7e",
  "source": {
    "blob": "ee6ad77ee3befe5863cc58c91f784b0aa0564e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05e688ad03848150ed36b7e0c6d35f7e47820a6363bf9775a16492ab0b114f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9768ea3-86e2-0550-162b-1d7297425da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_filter_univ {p : α → Prop} [DecidablePred p] : ∀ x, x ∈ univ.filter p ↔ p x := by simp

end Finset

namespace Mathlib.Meta
open Lean Elab Term Meta Batteries.ExtendedBinder Parser.Term PrettyPrinter.Delaborator SubExpr

/-- Elaborate set builder notation for `Finset`.

* `{x | p x}` is elaborated as `Finset.filter (fun x ↦ p x) Finset.univ` if the expected type is
  `Finset ?α`.
* `{x : α | p x}` is elaborated as `Finset.filter (fun x : α ↦ p x) Finset.univ` if the expected
  type is `Finset ?α`.
* `{x ∉ s | p x}` is elaborated as `Finset.filter (fun x ↦ p x) sᶜ` if either the expected type is
  `Finset ?α` or the expected type is not `Set ?α` and `s` has expected type `Finset ?α`.
* `{x ≠ a | p x}` is elaborated as `Finset.filter (fun x ↦ p x) {a}ᶜ` if the expected type is
  `Finset ?α`.

See also
* `Data.Set.Defs` for the `Set` builder notation elaborator that this elaborator partly overrides.
* `Data.Finset.Basic` for the `Finset` builder notation elaborator partly overriding this one for
  syntax of the form `{x ∈ s | p x}`.
* `Data.Fintype.Basic` for the `Finset` builder notation elaborator handling syntax of the form
  `{x | p x}`, `{x : α | p x}`, `{x ∉ s | p x}`, `{x ≠ a | p x}`.
* `Order.LocallyFinite.Basic` for the `Finset` builder notation elaborator handling syntax of the
  form `{x ≤ a | p x}`, `{x ≥ a | p x}`, `{x < a | p x}`, `{x > a | p x}`.
-/
@[term_elab setBuilder]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6ad77ee3befe5863cc58c91f784b0aa0564e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
