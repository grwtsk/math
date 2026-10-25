# WellFounded.sym2_gameAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c87899a7-236a-bf49-46e9-70fdf1425cd1",
  "kind": "theorem",
  "lexical_name": "WellFounded.sym2_gameAdd",
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
  "slug": "wellfounded-sym2-gameadd--51ac9143e686a8fbb604c386",
  "source": {
    "blob": "521d50db012fc93ae3c7b01d520a8209649f0891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51ac9143e686a8fbb604c386f69a2efe123ba2ac62f92d6cba38cf4bdbd37f13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c87899a7-236a-bf49-46e9-70fdf1425cd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WellFounded.sym2_gameAdd (h : WellFounded rα) : WellFounded (Sym2.GameAdd rα) :=
  ⟨fun i => Sym2.inductionOn i fun x y => (h.apply x).sym2_gameAdd (h.apply y)⟩

namespace Sym2

attribute [local instance] Sym2.Rel.setoid

/-- Recursion on the well-founded `Sym2.GameAdd` relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `521d50db012fc93ae3c7b01d520a8209649f0891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
