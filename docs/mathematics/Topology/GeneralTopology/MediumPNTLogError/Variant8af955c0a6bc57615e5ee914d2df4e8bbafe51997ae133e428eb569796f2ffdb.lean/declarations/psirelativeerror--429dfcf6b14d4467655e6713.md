# psiRelativeError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22ba1ba450626fd20d4cd5015f9e6c0864d62d8d859ac3fda6ef2191d3f47413",
  "kind": "def",
  "lexical_name": "psiRelativeError",
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
  "slug": "psirelativeerror--429dfcf6b14d4467655e6713",
  "source": {
    "blob": "7fb32f2d36d248deb6ab1fc829857aa778fb038c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 19,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:429dfcf6b14d4467655e67130aa68e30c52a8d3109c352699fa180404d8c240d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22ba1ba450626fd20d4cd5015f9e6c0864d62d8d859ac3fda6ef2191d3f47413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def psiRelativeError (t : ℝ) : ℝ := Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb32f2d36d248deb6ab1fc829857aa778fb038c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
