# addZeroRelabelling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adb89948c34e0be6b9549263acae02514e22fefd1980f327d9672b8eb0b12204",
  "kind": "def",
  "lexical_name": "addZeroRelabelling",
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
  "slug": "addzerorelabelling--169a565b51e2d39a886b0c2b",
  "source": {
    "blob": "edb9bb408eb9f5c634bc17b91668ebaa0643d465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:169a565b51e2d39a886b0c2be402184f44cf6920b47d11df17b2bc17d58b657d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adb89948c34e0be6b9549263acae02514e22fefd1980f327d9672b8eb0b12204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addZeroRelabelling : ∀ x : PGame.{u}, x + 0 ≡r x
  | ⟨xl, xr, xL, xR⟩ => by
    refine ⟨Equiv.sumEmpty xl PEmpty, Equiv.sumEmpty xr PEmpty, ?_, ?_⟩ <;> rintro (⟨i⟩ | ⟨⟨⟩⟩) <;>
      apply addZeroRelabelling
termination_by x => x

/-- `x + 0` is equivalent to `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edb9bb408eb9f5c634bc17b91668ebaa0643d465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
