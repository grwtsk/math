# State.next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab1ad48f7dc55942b4f5de04dbc329b5a9e8a3c61c07c8196047c6750cda6da3",
  "kind": "def",
  "lexical_name": "State.next",
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
  "slug": "state-next--5f989e51e4de0cdbb430277e",
  "source": {
    "blob": "af56490653738806d17173c857964c8428d49d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f989e51e4de0cdbb430277e95ab1ea038e294b6913c55b74d437bcf2ca87ce8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab1ad48f7dc55942b4f5de04dbc329b5a9e8a3c61c07c8196047c6750cda6da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize cfg] protected def State.next (state : State cfg) : BitVec cfg.wordSize × State cfg :=
  let i := state.index
  let s := state.twist
  (temper s.data[i], s)
where
  /-- Tempering step for Mersenne Twister. -/
  @[inline] temper (x : BitVec cfg.wordSize) :=
    match cfg.temperingShifts, cfg.temperingMasks with
    | (u, s, t, l), (d, b, c) =>
      let x := x ^^^ x >>> u &&& d
      let x := x ^^^ x <<< s &&& b
      let x := x ^^^ x <<< t &&& c
      x ^^^ x >>> l

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af56490653738806d17173c857964c8428d49d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
