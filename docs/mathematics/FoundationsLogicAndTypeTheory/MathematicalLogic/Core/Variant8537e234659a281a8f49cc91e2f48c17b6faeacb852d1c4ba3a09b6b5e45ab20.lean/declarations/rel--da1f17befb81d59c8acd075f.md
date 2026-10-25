# rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b13b2cc974068fac8c52abdaac18de08578dc21418fe611d5beee15a807a2875",
  "kind": "def",
  "lexical_name": "rel",
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
  "slug": "rel--da1f17befb81d59c8acd075f",
  "source": {
    "blob": "c00f44d589c186526ee811958ab745a2b1078de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2214,
    "line": 2207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da1f17befb81d59c8acd075f4c9baec9911d58c0edd3210a7318b70400970dab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b13b2cc974068fac8c52abdaac18de08578dc21418fe611d5beee15a807a2875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2207–2214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def rel {s : Setoid α} (q₁ q₂ : Quotient s) : Prop :=
  Quotient.liftOn₂ q₁ q₂
    (fun a₁ a₂ => a₁ ≈ a₂)
    (fun _ _ _ _ a₁b₁ a₂b₂ =>
      propext (Iff.intro
        (fun a₁a₂ => Setoid.trans (Setoid.symm a₁b₁) (Setoid.trans a₁a₂ a₂b₂))
        (fun b₁b₂ => Setoid.trans a₁b₁ (Setoid.trans b₁b₂ (Setoid.symm a₂b₂)))))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean#L2207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00f44d589c186526ee811958ab745a2b1078de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
