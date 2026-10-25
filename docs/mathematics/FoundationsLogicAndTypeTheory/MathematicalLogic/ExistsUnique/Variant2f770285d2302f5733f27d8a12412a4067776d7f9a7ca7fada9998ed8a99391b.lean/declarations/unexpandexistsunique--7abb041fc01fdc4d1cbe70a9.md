# unexpandExistsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6add46e3c3352ce3ac1b852c2d5fd40411a7d529e8abe4eeb0868a71fcf3c4c9",
  "kind": "def",
  "lexical_name": "unexpandExistsUnique",
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
  "slug": "unexpandexistsunique--7abb041fc01fdc4d1cbe70a9",
  "source": {
    "blob": "75053fb087909647a7f2dc1d7078e9bd574b9bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7abb041fc01fdc4d1cbe70a9c23cccb60fb628268e656cc14294f3764c8e0be8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6add46e3c3352ce3ac1b852c2d5fd40411a7d529e8abe4eeb0868a71fcf3c4c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_unexpander ExistsUnique] meta def unexpandExistsUnique : Lean.PrettyPrinter.Unexpander
  | `($(_) fun $x:ident ↦ $b)                      => `(∃! $x:ident, $b)
  | `($(_) fun ($x:ident : $t) ↦ $b)               => `(∃! $x:ident : $t, $b)
  | _                                              => throw ()

/--
`∃! x ∈ s, p x` means `∃! x, x ∈ s ∧ p x`, which is to say that there exists a unique `x ∈ s`
such that `p x`.
Similarly, notations such as `∃! x ≤ n, p n` are supported,
using any relation defined using the `binder_predicate` command.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75053fb087909647a7f2dc1d7078e9bd574b9bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
