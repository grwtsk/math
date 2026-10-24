# Adadic.Bit.indexNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f922f5e070efda6579bd7fd2a63cbb2282729dc81c02dd15ea98a57e6c1bfd2b",
  "kind": "def",
  "lexical_name": "Adadic.Bit.indexNat",
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
  "slug": "adadic-bit-indexnat--c2e029f68c3c132b397119aa",
  "source": {
    "blob": "465ed420fe290c7ee432921afd00994bc36e0b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e029f68c3c132b397119aae80b71df8ab8de0524bca3c68fe425fd149a6884",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f922f5e070efda6579bd7fd2a63cbb2282729dc81c02dd15ea98a57e6c1bfd2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adadic.Bit.indexNat : Adadic.Bit → Nat
  | .coverOpen => 0
  | .coverBoundary => 1
  | .arithmeticCore => 2
  | .arithmeticResidue => 3
  | .controlFlow => 4
  | .kernelAdmission => 5
  | .handshake => 6

/-- Finite index of a bit in the 7-bit frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465ed420fe290c7ee432921afd00994bc36e0b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
