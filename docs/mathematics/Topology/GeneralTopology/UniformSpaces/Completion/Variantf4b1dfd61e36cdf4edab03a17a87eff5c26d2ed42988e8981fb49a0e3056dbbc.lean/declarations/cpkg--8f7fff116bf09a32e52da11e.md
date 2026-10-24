# cPkg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bc56375a05f2b1ca991f64b60e10f636050bef0ab5b1b94373a75ee578e5b09",
  "kind": "def",
  "lexical_name": "cPkg",
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
  "slug": "cpkg--8f7fff116bf09a32e52da11e",
  "source": {
    "blob": "e7e1caa48b7abeb673eed6a7d7f69cbbbf4cea8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 330,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f7fff116bf09a32e52da11ebea73d721908f7eb492585e32bcb9a49a14fdd8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bc56375a05f2b1ca991f64b60e10f636050bef0ab5b1b94373a75ee578e5b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cPkg {α : Type*} [UniformSpace α] : AbstractCompletion α where
  space := Completion α
  coe := (↑)
  uniformStruct := by infer_instance
  complete := by infer_instance
  separation := by infer_instance
  isUniformInducing := Completion.isUniformInducing_coe α
  dense := Completion.denseRange_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7e1caa48b7abeb673eed6a7d7f69cbbbf4cea8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
