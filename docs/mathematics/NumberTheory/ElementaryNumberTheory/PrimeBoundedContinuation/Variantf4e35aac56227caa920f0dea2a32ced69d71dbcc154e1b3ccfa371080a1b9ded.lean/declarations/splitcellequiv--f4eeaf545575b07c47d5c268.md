# splitCellEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bea91b331a29a3776e095ff48907aacd2cf05220bbbb1bbff9d3501dfbcd943f",
  "kind": "def",
  "lexical_name": "splitCellEquiv",
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
  "slug": "splitcellequiv--f4eeaf545575b07c47d5c268",
  "source": {
    "blob": "2b7906c5d411a161f0ae5d1325f10c760c17e6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4eeaf545575b07c47d5c268f5bdd030470150f2898d610ce0d7fd103e1d24b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bea91b331a29a3776e095ff48907aacd2cf05220bbbb1bbff9d3501dfbcd943f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitCellEquiv {radix : ℕ} {radices : List ℕ} :
    BoundedCell (radix :: radices) ≃ BoundedCell radices × Fin radix where
  toFun cell :=
    match cell with
    | .cons digit tail => ⟨tail, digit⟩
  invFun pair := .cons pair.2 pair.1
  left_inv cell := by cases cell; rfl
  right_inv pair := by rcases pair with ⟨tail, digit⟩; rfl

/--
The complete mixed-radix encoder.  `finProdFinEquiv` uses
`head + radix * tail`, so this is the requested least-significant-first rank.
-/
@[expose, surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b7906c5d411a161f0ae5d1325f10c760c17e6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
