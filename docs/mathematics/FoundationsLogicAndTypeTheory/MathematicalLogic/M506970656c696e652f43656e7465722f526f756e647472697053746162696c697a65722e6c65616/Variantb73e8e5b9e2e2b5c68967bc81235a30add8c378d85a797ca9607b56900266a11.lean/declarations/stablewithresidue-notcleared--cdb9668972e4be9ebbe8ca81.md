# stableWithResidue_notCleared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8568c256-cce6-e1cf-e171-4624d5b23a3d",
  "kind": "theorem",
  "lexical_name": "stableWithResidue_notCleared",
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
  "slug": "stablewithresidue-notcleared--cdb9668972e4be9ebbe8ca81",
  "source": {
    "blob": "96625e7989f2406ae83848f232252023fbe13b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 321,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb9668972e4be9ebbe8ca81ae44c2563ac19883349dc42abf547c1fa2ec4320",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8568c256-cce6-e1cf-e171-4624d5b23a3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stableWithResidue_notCleared
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (r : Residue)
    (s : LoopState Residue Payload Output ReverseInput Beam)
    (hActive : r ∈ s.activeResidues)
    (hContained : activeContained s) :
    ¬ residueCleared r s := by
  exact contained_not_cleared r s (hContained r hActive)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96625e7989f2406ae83848f232252023fbe13b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
