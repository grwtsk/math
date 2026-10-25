# cyclicGroupAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e886174dc0ed4834b2b372349b48b7082172483fb3458bf7172900c91dc14d97",
  "kind": "def",
  "lexical_name": "cyclicGroupAlgebra",
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
  "slug": "cyclicgroupalgebra--c34936778be0182c2d61ca76",
  "source": {
    "blob": "340fb8c9cfbc624762205b2e31b01b6ca49c8046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c34936778be0182c2d61ca762b126c2eb5cc86c0f4cdce61f0cfe70f58dd1b64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e886174dc0ed4834b2b372349b48b7082172483fb3458bf7172900c91dc14d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cyclicGroupAlgebra (M : ℕ) : Algebra (ZMod M) where
  numOps := 3
  arity := ![2, 1, 0]
  op := Fin.cases (fun (inputs : Fin 2 → ZMod M) => inputs 0 + inputs 1)
    (Fin.cases (fun (inputs : Fin 1 → ZMod M) => -inputs 0)
      (Fin.cases (fun (_ : Fin 0 → ZMod M) => 0) (fun i => Fin.elim0 i)))

/-- These finite-signature congruences are exactly the additive group congruences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340fb8c9cfbc624762205b2e31b01b6ca49c8046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
