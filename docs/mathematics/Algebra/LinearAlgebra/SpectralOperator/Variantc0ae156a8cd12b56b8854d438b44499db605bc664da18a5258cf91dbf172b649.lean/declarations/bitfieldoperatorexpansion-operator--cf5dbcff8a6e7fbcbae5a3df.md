# BitfieldOperatorExpansion.operator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf2064444b5fc0a806abe8934f68a4724a180113fff5b2e628bcbf5bfefae038",
  "kind": "def",
  "lexical_name": "BitfieldOperatorExpansion.operator",
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
  "slug": "bitfieldoperatorexpansion-operator--cf5dbcff8a6e7fbcbae5a3df",
  "source": {
    "blob": "0f970ade79f8bae4137893475fe1798179fea38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf5dbcff8a6e7fbcbae5a3dff8a64fe9f5e4bf72b762b7873a60ef533f7c50ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf2064444b5fc0a806abe8934f68a4724a180113fff5b2e628bcbf5bfefae038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def BitfieldOperatorExpansion.operator
    {system : RandomBitfieldSystem}
    {dim : Nat}
    (expansion : BitfieldOperatorExpansion system dim)
    (state : Bitfield system.bits) :
    Matrix (Fin dim) (Fin dim) ℂ :=
  expansion.baseline +
    ∑ support ∈ expansion.activeInteractions,
      ((walshCharacter state support : ℝ) : ℂ) •
        expansion.interaction support

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f970ade79f8bae4137893475fe1798179fea38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
