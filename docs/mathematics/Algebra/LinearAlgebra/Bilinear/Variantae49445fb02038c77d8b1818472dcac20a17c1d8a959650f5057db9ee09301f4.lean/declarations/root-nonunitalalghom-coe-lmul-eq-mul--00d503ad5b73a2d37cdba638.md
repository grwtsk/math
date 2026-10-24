# _root_.NonUnitalAlgHom.coe_lmul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86e27173ee73b1eae7a58391ac1daa88f59c55d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06b4346d-7fa0-24c8-57da-20295f62b5c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efa9400b-19ff-4282-2e4d-82b30b3fded8",
  "kind": "theorem",
  "lexical_name": "_root_.NonUnitalAlgHom.coe_lmul_eq_mul",
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
  "slug": "root-nonunitalalghom-coe-lmul-eq-mul--00d503ad5b73a2d37cdba638",
  "source": {
    "blob": "a86e27173ee73b1eae7a58391ac1daa88f59c55d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00d503ad5b73a2d37cdba6386898e4d7cdf45d26d6d9772696128929d5e75e66",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa9400b-19ff-4282-2e4d-82b30b3fded8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.NonUnitalAlgHom.coe_lmul_eq_mul : ⇑(NonUnitalAlgHom.lmul R A) = mul R A :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86e27173ee73b1eae7a58391ac1daa88f59c55d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
