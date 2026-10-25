# taggedTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f082da6aa905a10e94b128c233d4f1255c2739f1f17491f3266b90ecf90fd39",
  "kind": "def",
  "lexical_name": "taggedTheory",
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
  "slug": "taggedtheory--7f225e27e479a84a38a5d7b4",
  "source": {
    "blob": "94edfaa921e672996f9c74ba8b01954cc99c9bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantfdc25e8f6ab948d9c604ce9b04e1290e865be87f9698b85dd68bb8318841f018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f225e27e479a84a38a5d7b4a3ddfb42581ba06bcc98a54e900b82ca7c4f8c5b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantfdc25e8f6ab948d9c604ce9b04e1290e865be87f9698b85dd68bb8318841f018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f082da6aa905a10e94b128c233d4f1255c2739f1f17491f3266b90ecf90fd39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def taggedTheory : Theory where
  Object := Unit
  Proposition := Prop
  Holds := id
  ProofObject := fun proposition => Bool × PLift proposition
  proofObjectSound := fun proof => proof.2.down
  reifyProofObject := fun proof => (false, ⟨proof⟩)
  propositionSupport := fun _ => .universal
  propositionProperty := fun proposition _ => proposition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantfdc25e8f6ab948d9c604ce9b04e1290e865be87f9698b85dd68bb8318841f018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03InterpreterAndProofObjectBoundaries/Variantfdc25e8f6ab948d9c604ce9b04e1290e865be87f9698b85dd68bb8318841f018.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94edfaa921e672996f9c74ba8b01954cc99c9bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
