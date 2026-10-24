# rightAddResiduation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9d90e823d2d25cd87a90d4b0141051300cb0cda51564021738d134097a9c685",
  "kind": "def",
  "lexical_name": "rightAddResiduation",
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
  "slug": "rightaddresiduation--61d028b6060476738e8c4a1f",
  "source": {
    "blob": "e245da2a4846628fcd2490426c7d1b04caa82b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61d028b6060476738e8c4a1f01f31bc6f2815fe55c0457f6686bf10d92f94b5c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9d90e823d2d25cd87a90d4b0141051300cb0cda51564021738d134097a9c685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightAddResiduation (x y : α) := sSup {z | x + z ≤ y}

@[inherit_doc]
scoped infixr:60 " ⇨ₗ " => leftAddResiduation

@[inherit_doc]
scoped infixr:60 " ⇨ᵣ " => rightAddResiduation

end AddQuantale

namespace Quantale

variable {α : Type*} {ι : Type*} {x y z : α} {s : Set α} {f : ι → α}
variable [Semigroup α] [CompleteLattice α] [IsQuantale α]

/-- Left- and right-residuation operators on a quantale are similar to the Heyting
operator on complete lattices, but for a non-commutative logic.
I.e. `x ≤ y ⇨ₗ z ↔ x * y ≤ z` or alternatively `x ⇨ₗ y = sSup { z | z * x ≤ y }`.
-/
@[to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e245da2a4846628fcd2490426c7d1b04caa82b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
