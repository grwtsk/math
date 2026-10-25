# HasGate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85672857961c70f1bf6ff695be4d96e0ab38640db1c170de181171184fce6c1d",
  "kind": "inductive",
  "lexical_name": "HasGate",
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
  "slug": "hasgate--f7d4fb46e05ab4394ac6083d",
  "source": {
    "blob": "84e80dde3443203a5afd9ad990593d9ab65c71a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant8f8c76b53f80fcd6f90d304af73604c52f13135f0aaee0d8e4a02a139fa56936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7d4fb46e05ab4394ac6083d4f6a0cddd227d383e9124bfae08535d1c306a5fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant8f8c76b53f80fcd6f90d304af73604c52f13135f0aaee0d8e4a02a139fa56936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85672857961c70f1bf6ff695be4d96e0ab38640db1c170de181171184fce6c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive HasGate (r : MutationReceipts) : MutationGate → Prop where
  | pathWhitelisted {g : MutationGate} :
      r.pathWhitelisted = g → HasGate r g
  | mutationContracted {g : MutationGate} :
      r.mutationContracted = g → HasGate r g
  | compareAndSetMatched {g : MutationGate} :
      r.compareAndSetMatched = g → HasGate r g
  | residueAdmitted {g : MutationGate} :
      r.residueAdmitted = g → HasGate r g
  | nandAdmitted {g : MutationGate} :
      r.nandAdmitted = g → HasGate r g
  | filetypeValidated {g : MutationGate} :
      r.filetypeValidated = g → HasGate r g
  | toolchainPassed {g : MutationGate} :
      r.toolchainPassed = g → HasGate r g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant8f8c76b53f80fcd6f90d304af73604c52f13135f0aaee0d8e4a02a139fa56936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f4d75746174696f6e476174652e6c65616e/Variant8f8c76b53f80fcd6f90d304af73604c52f13135f0aaee0d8e4a02a139fa56936.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e80dde3443203a5afd9ad990593d9ab65c71a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
