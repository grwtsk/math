# of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc8a0b17-60f1-16a1-7de6-d1b02f46e6ab",
  "kind": "theorem",
  "lexical_name": "of_injective",
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
  "slug": "of-injective--1860ef42eae17ae90d142c31",
  "source": {
    "blob": "fb7975ce0da642f83a73d935238750d988813eef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 662,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbc09879669e49cd5c03f1a7b67f9b46a0c6d33b40f95d9dd15aec4b00da80ff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1860ef42eae17ae90d142c31b5694402e46fdd23977644c9b642216a8aa5fe97",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbc09879669e49cd5c03f1a7b67f9b46a0c6d33b40f95d9dd15aec4b00da80ff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8a0b17-60f1-16a1-7de6-d1b02f46e6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_injective : Function.Injective (@of α) := fun _ _ H => by
  let ⟨L₁, hx, hy⟩ := Red.exact.1 H
  simp [Red.singleton_iff] at hx hy; simp_all

section lift

variable {β : Type v} [Group β] (f : α → β) {x : FreeGroup α}

/-- Given `f : α → β` with `β` a group, the canonical map `List (α × Bool) → β` -/
@[to_additive /-- Given `f : α → β` with `β` an additive group, the canonical map
  `List (α × Bool) → β` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbc09879669e49cd5c03f1a7b67f9b46a0c6d33b40f95d9dd15aec4b00da80ff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbc09879669e49cd5c03f1a7b67f9b46a0c6d33b40f95d9dd15aec4b00da80ff0.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb7975ce0da642f83a73d935238750d988813eef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
