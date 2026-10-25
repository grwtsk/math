# Or.by_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edd8c93bf489b77cabc7f9a7f53dcfbcac844d9e2ff4d0b1d9ca2b7ba44f1dd5",
  "kind": "def",
  "lexical_name": "Or.by_cases",
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
  "slug": "or-by-cases--28fbd34760bb85cd0b922f95",
  "source": {
    "blob": "96fcef5206ebe43f41d4492cd7e5e8b4719a940a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 538,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant7acb8cbf8302620c16291e14f10e14183adcc815bb13941249d2796a6b19de11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28fbd34760bb85cd0b922f956b19066ff09363948e9b4d6415512e756d51542b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant7acb8cbf8302620c16291e14f10e14183adcc815bb13941249d2796a6b19de11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edd8c93bf489b77cabc7f9a7f53dcfbcac844d9e2ff4d0b1d9ca2b7ba44f1dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Or.by_cases [Decidable p] {α : Sort u} (h : p ∨ q) (h₁ : p → α) (h₂ : q → α) : α :=
  if hp : p then h₁ hp else h₂ (h.resolve_left hp)

/-- Construct a non-Prop by cases on an `Or`, when the right conjunct is decidable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant7acb8cbf8302620c16291e14f10e14183adcc815bb13941249d2796a6b19de11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant7acb8cbf8302620c16291e14f10e14183adcc815bb13941249d2796a6b19de11.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fcef5206ebe43f41d4492cd7e5e8b4719a940a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
