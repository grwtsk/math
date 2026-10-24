# adjacencySpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22d19fa628a4ef4ce19e9922ecc6fba61af54609928efa9e3bb9126da9a6f35f",
  "kind": "def",
  "lexical_name": "adjacencySpectrum",
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
  "slug": "adjacencyspectrum--52d10b12789b37f36fcfa144",
  "source": {
    "blob": "bcb3feb5c13fccc1662ecf8dbd096986ef61c816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52d10b12789b37f36fcfa14414cce51c4a64571d3aac737d2766f2a4d015fae7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22d19fa628a4ef4ce19e9922ecc6fba61af54609928efa9e3bb9126da9a6f35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjacencySpectrum (operator : AdjacencyOperator) : List (Nat × Nat) :=
  operator.edges

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb3feb5c13fccc1662ecf8dbd096986ef61c816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
