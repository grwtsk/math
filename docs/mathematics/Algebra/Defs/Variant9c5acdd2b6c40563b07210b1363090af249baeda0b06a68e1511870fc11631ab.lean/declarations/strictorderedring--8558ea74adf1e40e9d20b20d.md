# StrictOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dff65e78a38831af3f06720251dac917ff4fc463b7bbc2c15b4a92754a3ca96d",
  "kind": "structure",
  "lexical_name": "StrictOrderedRing",
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
  "slug": "strictorderedring--8558ea74adf1e40e9d20b20d",
  "source": {
    "blob": "238d08f995f77dff263d9e40a55c230ce93cb034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 306,
    "path": "GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8558ea74adf1e40e9d20b20d6ab89ba6cae1ea01822f6631dd448583eda72b97",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dff65e78a38831af3f06720251dac917ff4fc463b7bbc2c15b4a92754a3ca96d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictOrderedRing (R : Type u) extends Ring R, OrderedAddCommGroup R, Nontrivial R where
  /-- In a strict ordered ring, `0 ≤ 1`. -/
  protected zero_le_one : 0 ≤ (1 : R)
  /-- The product of two positive elements is positive. -/
  protected mul_pos : ∀ a b : R, 0 < a → 0 < b → 0 < a * b

set_option linter.deprecated false in
/-- A `StrictOrderedCommRing` is a commutative ring with a partial order such that addition is
strictly monotone and multiplication by a positive number is strictly monotone. -/
@[deprecated "Use `[CommRing R] [PartialOrder R] [IsStrictOrderedRing R]` instead."
  (since := "2025-04-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238d08f995f77dff263d9e40a55c230ce93cb034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
