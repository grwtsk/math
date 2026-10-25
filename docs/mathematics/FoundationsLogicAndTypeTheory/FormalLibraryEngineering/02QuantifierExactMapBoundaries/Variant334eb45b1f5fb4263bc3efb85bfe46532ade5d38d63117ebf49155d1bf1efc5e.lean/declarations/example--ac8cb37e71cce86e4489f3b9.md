# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05aa8586ccda0a5ada7c4717550aab1f44c347570a01e948979a2b9894fc36c2",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ac8cb37e71cce86e4489f3b9",
  "source": {
    "blob": "7513ea3dc6716e1f506019ba56cad2f1aaf15045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierExactMapBoundaries/Variant334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac8cb37e71cce86e4489f3b9632eef3d6c25f85e476ed828dda7e656989eaec9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierExactMapBoundaries/Variant334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05aa8586ccda0a5ada7c4717550aab1f44c347570a01e948979a2b9894fc36c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬ Nonempty (QuantifierUnspecifiedCompatibility
    (carrierTheory Bool) (carrierTheory Nat)
    (fun value : Bool => if value then (1 : Nat) else 0)
    unknownCarrierProfile unknownCarrierProfile) := by
  rintro ⟨compatibility⟩
  exact boolNatUnknownCompatibilityImpossible compatibility

end FCRS.TheoremTransfer.Cycle6.QuantifierExactMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierExactMapBoundaries/Variant334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierExactMapBoundaries/Variant334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7513ea3dc6716e1f506019ba56cad2f1aaf15045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
