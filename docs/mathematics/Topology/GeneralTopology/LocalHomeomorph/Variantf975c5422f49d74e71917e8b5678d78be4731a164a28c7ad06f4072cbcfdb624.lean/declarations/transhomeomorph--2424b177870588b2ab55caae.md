# transHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77b02293c2c01adb42f42cc1ed31efc16a37a3db6571a63902931134d8a3a5a1",
  "kind": "def",
  "lexical_name": "transHomeomorph",
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
  "slug": "transhomeomorph--2424b177870588b2ab55caae",
  "source": {
    "blob": "69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 903,
    "path": "GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2424b177870588b2ab55caae2b818e9d75e5c1420dc1cf4249801c28e5117b5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77b02293c2c01adb42f42cc1ed31efc16a37a3db6571a63902931134d8a3a5a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 903–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transHomeomorph (e' : β ≃ₜ γ) : LocalHomeomorph α γ where
  toLocalEquiv := e.toLocalEquiv.transEquiv e'.toEquiv
  open_source := e.open_source
  open_target := e.open_target.preimage e'.symm.continuous
  continuous_toFun := e'.continuous.comp_continuousOn e.continuousOn
  continuous_invFun := e.symm.continuousOn.comp e'.symm.continuous.continuousOn fun _ => id
#align local_homeomorph.trans_homeomorph LocalHomeomorph.transHomeomorph

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean#L903).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
