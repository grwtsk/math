# phaseRotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a3fef3411051b15770f53c7ccb22b7247717b7661a0a7ebd55a8eaec511e7ba",
  "kind": "def",
  "lexical_name": "phaseRotation",
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
  "slug": "phaserotation--c80346f535d5f1aff3ace180",
  "source": {
    "blob": "85573ab7298fd5529d3fa644c9c3afb6ec55d26e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c80346f535d5f1aff3ace1806e08d0ecdf4f4dde874a178fc43b3c5599e880e1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a3fef3411051b15770f53c7ccb22b7247717b7661a0a7ebd55a8eaec511e7ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def phaseRotation (χ : ℂ) : Matrix (Fin 2) (Fin 2) ℂ :=
  phaseReflection χ * phaseReflection 1

/-- The plus projector of the phase reflection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85573ab7298fd5529d3fa644c9c3afb6ec55d26e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
