# finiteCoverAndTailGrammar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:387e229f995ede9a836838d9e3025a391b9923f8daa7bbc1dbfd0b373e739cef",
  "kind": "def",
  "lexical_name": "finiteCoverAndTailGrammar",
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
  "slug": "finitecoverandtailgrammar--7f75195c126cfc4b807c8a71",
  "source": {
    "blob": "ec3343e177b1baf33c95be26c47e2674cba8c781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f75195c126cfc4b807c8a711729c06eb930fba36f183a07ab4632561821da0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:387e229f995ede9a836838d9e3025a391b9923f8daa7bbc1dbfd0b373e739cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteCoverAndTailGrammar {α ι : Type*} : ProofGrammar (CoverProblem α ι) where
  hypotheses p :=
    (∀ x ∈ p.domain, (∃ i ∈ p.indices, x ∈ p.cells i) ∨ x ∈ p.tail) ∧
    (∀ i ∈ p.indices, ∀ x ∈ p.cells i, p.property x) ∧
    (∀ x ∈ p.tail, p.property x)
  conclusion p := ∀ x ∈ p.domain, p.property x
  prove p hypotheses := Coverage.forall_on_of_finite_cover_and_tail
    p.domain p.tail p.cells p.indices p.property hypotheses.1 hypotheses.2.1 hypotheses.2.2

/-- The existing symbol-count classification supplies the actual invertible witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec3343e177b1baf33c95be26c47e2674cba8c781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
