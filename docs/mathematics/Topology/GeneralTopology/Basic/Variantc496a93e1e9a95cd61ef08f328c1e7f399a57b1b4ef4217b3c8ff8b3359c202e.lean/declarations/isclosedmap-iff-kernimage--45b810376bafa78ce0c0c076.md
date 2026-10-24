# isClosedMap_iff_kernImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5750b866-ca3f-febe-914a-b2040b328c59",
  "kind": "lemma",
  "lexical_name": "isClosedMap_iff_kernImage",
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
  "slug": "isclosedmap-iff-kernimage--45b810376bafa78ce0c0c076",
  "source": {
    "blob": "c554f98ab922db600d84c6f4bfa03f2671c8bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 598,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b810376bafa78ce0c0c076e94e43e158e26b60045a0c51e78b5cc37666339b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5750b866-ca3f-febe-914a-b2040b328c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedMap_iff_kernImage :
    IsClosedMap f ↔ ∀ {u : Set X}, IsOpen u → IsOpen (kernImage f u) := by
  rw [IsClosedMap, compl_surjective.forall]
  simp [kernImage_eq_compl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c554f98ab922db600d84c6f4bfa03f2671c8bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
