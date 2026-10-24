# equivPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b8644b32f6df86982ad94ec2dfed0561867cd4ffe60e30c5fc543024a87e47c",
  "kind": "def",
  "lexical_name": "equivPair",
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
  "slug": "equivpair--80141e2fad31580cb8c43aa4",
  "source": {
    "blob": "157fdb171b8be47b857bf775b7c5f96f68809c28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 441,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant7761bc24a980a35e3b162225b70206795300ddc9ca1b1ea161e564f1feab158a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80141e2fad31580cb8c43aa45bf300945d3270cf79164b5583afc9d322326a49",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variant7761bc24a980a35e3b162225b70206795300ddc9ca1b1ea161e564f1feab158a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b8644b32f6df86982ad94ec2dfed0561867cd4ffe60e30c5fc543024a87e47c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivPair (i) : Word M ≃ Pair M i where
  toFun w := (equivPairAux i w).val
  invFun := rcons
  left_inv w := (equivPairAux i w).property
  right_inv _ := rcons_inj (equivPairAux i _).property

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variant7761bc24a980a35e3b162225b70206795300ddc9ca1b1ea161e564f1feab158a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variant7761bc24a980a35e3b162225b70206795300ddc9ca1b1ea161e564f1feab158a.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157fdb171b8be47b857bf775b7c5f96f68809c28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
