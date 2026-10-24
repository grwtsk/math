# atomResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:943058c1b1f3aa01f938265af4a314bfef971f73ace14cda965fb6086d6e5058",
  "kind": "def",
  "lexical_name": "atomResidue",
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
  "slug": "atomresidue--75b85cfa909b7997d9425f74",
  "source": {
    "blob": "1684e11aaa8c5bdacc5aeac7b0c0ee518c9a1c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant6fde61133d1e6bec8149cc9cdfd562a88c9258f231b9e28e9a9da856d50a1561.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75b85cfa909b7997d9425f74f36f701d5f3ff338f1bddf4f19f5e8e1f75a810a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant6fde61133d1e6bec8149cc9cdfd562a88c9258f231b9e28e9a9da856d50a1561.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:943058c1b1f3aa01f938265af4a314bfef971f73ace14cda965fb6086d6e5058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def atomResidue (a : Atom) : Residue :=
  { target := Target.ModularWaveBitMatrix
    atomId := Atom.id a
    kind :=
      match a with
      | .qWaveTruncation => ResidueKind.missingFiniteWitness
      | .coefficientDomain => ResidueKind.missingDefinition
      | .lfunctionToEML => ResidueKind.missingLowering
      | .emlToNAND => ResidueKind.missingLowering
      | .nandToBitMatrix => ResidueKind.missingLowering
      | .bitMatrixDecoder => ResidueKind.missingDecode
      | .orderedPoleProjection => ResidueKind.missingDecode
      | .traceQuotientProjection => ResidueKind.missingTraceQuotient
      | .compactShellProjection => ResidueKind.missingDefinition
      | .noExternalModularityAuthority => ResidueKind.externalTheoremNotImported
    blocks := "finite modular-wave BitMatrix projection theorem"
    clearsBy := "a local finite proof object for this atom" }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant6fde61133d1e6bec8149cc9cdfd562a88c9258f231b9e28e9a9da856d50a1561.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant6fde61133d1e6bec8149cc9cdfd562a88c9258f231b9e28e9a9da856d50a1561.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1684e11aaa8c5bdacc5aeac7b0c0ee518c9a1c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
