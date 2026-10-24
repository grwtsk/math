# Condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df79c2f9b2d57907c714e7bb513f20dd4b42472a475615c110d1893237dee52e",
  "kind": "def",
  "lexical_name": "Condition",
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
  "slug": "condition--4b33c61eb3554fa8ae64109d",
  "source": {
    "blob": "f70b009084c5499dcb392fa79b548d405346d20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 69,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b33c61eb3554fa8ae64109d507210d25eb7350385a35ce318b5ff24096c4de6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df79c2f9b2d57907c714e7bb513f20dd4b42472a475615c110d1893237dee52e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Condition (a : ℕ → ℤ) : Prop := (∀ i, a i ∈ Icc 1 2015) ∧ Function.Injective fun i ↦ i + a i

/-- The collection of ball heights in the solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70b009084c5499dcb392fa79b548d405346d20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
