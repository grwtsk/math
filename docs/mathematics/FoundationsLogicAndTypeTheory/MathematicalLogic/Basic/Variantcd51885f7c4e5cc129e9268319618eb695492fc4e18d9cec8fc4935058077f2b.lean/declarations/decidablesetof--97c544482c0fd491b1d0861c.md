# decidableSetOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d57f3380dfb0158e15570b1ba40eb37d02c81e811b48964bcb7a79a80348e02e",
  "kind": "instance",
  "lexical_name": "decidableSetOf",
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
  "slug": "decidablesetof--97c544482c0fd491b1d0861c",
  "source": {
    "blob": "bc4092476c09c5a0db8fe134f1cd00cdd8aaa7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1493,
    "line": 1483,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcd51885f7c4e5cc129e9268319618eb695492fc4e18d9cec8fc4935058077f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97c544482c0fd491b1d0861c5c4ab763c8e900bef1e6e2d6a517fbe14f196927",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcd51885f7c4e5cc129e9268319618eb695492fc4e18d9cec8fc4935058077f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d57f3380dfb0158e15570b1ba40eb37d02c81e811b48964bcb7a79a80348e02e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1483–1493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableSetOf (p : α → Prop) [Decidable (p a)] : Decidable (a ∈ { a | p a }) := by
  assumption

end Set

variable {α : Type*} {s t u : Set α}

namespace Equiv

/-- Given a predicate `p : α → Prop`, produces an equivalence between
  `Set {a : α // p a}` and `{s : Set α // ∀ a ∈ s, p a}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcd51885f7c4e5cc129e9268319618eb695492fc4e18d9cec8fc4935058077f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcd51885f7c4e5cc129e9268319618eb695492fc4e18d9cec8fc4935058077f2b.lean#L1483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc4092476c09c5a0db8fe134f1cd00cdd8aaa7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
