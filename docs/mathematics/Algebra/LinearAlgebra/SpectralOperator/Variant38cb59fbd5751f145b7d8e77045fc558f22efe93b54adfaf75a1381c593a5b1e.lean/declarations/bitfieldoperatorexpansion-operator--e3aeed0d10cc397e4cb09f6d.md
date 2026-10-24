# BitfieldOperatorExpansion.operator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31bec6c72907226d7740854afac98ba6aa2cdd7ba153c7a00709bd11e6cc8bc5",
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
  "slug": "bitfieldoperatorexpansion-operator--e3aeed0d10cc397e4cb09f6d",
  "source": {
    "blob": "6ce081495ce84f018bbc93e30f8511df8ce3b237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3aeed0d10cc397e4cb09f6de0656894260175baa257b64b43f9f090711afbe1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31bec6c72907226d7740854afac98ba6aa2cdd7ba153c7a00709bd11e6cc8bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce081495ce84f018bbc93e30f8511df8ce3b237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
