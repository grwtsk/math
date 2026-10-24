# _root_.NonUnitalAlgHom.lmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceff2d3455f667e90854a9d0d1965bac0c5155a5d4c1c0e1f4819f56b6cd51e1",
  "kind": "def",
  "lexical_name": "_root_.NonUnitalAlgHom.lmul",
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
  "slug": "root-nonunitalalghom-lmul--c45ad7964f675c2f67727e76",
  "source": {
    "blob": "d17350e6c667a1d9b771fe2ef916e9a51300e41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c45ad7964f675c2f67727e762b9e4790dcfb5b989ab243af576b416f8f2bcadb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceff2d3455f667e90854a9d0d1965bac0c5155a5d4c1c0e1f4819f56b6cd51e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.NonUnitalAlgHom.lmul : A →ₙₐ[R] End R A where
  __ := mul R A
  map_mul' := mulLeft_mul _ _
  map_zero' := mulLeft_zero_eq_zero _ _

variable {R A B}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d17350e6c667a1d9b771fe2ef916e9a51300e41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
