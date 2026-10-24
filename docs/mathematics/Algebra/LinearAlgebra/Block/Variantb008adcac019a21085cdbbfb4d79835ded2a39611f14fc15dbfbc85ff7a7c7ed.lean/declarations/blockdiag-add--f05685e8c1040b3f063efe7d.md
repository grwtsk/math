# blockDiag'_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8200bd26-b1b9-1f43-6a96-68143fdc0245",
  "kind": "theorem",
  "lexical_name": "blockDiag'_add",
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
  "slug": "blockdiag-add--f05685e8c1040b3f063efe7d",
  "source": {
    "blob": "3c1948477240a9475eecea74b06b4b485f325670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 786,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f05685e8c1040b3f063efe7ddd76a099efe5806fcfb7cb53da096bc6dc9a23ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8200bd26-b1b9-1f43-6a96-68143fdc0245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDiag'_add [Add α] (M N : Matrix (Σ i, m' i) (Σ i, n' i) α) :
    blockDiag' (M + N) = blockDiag' M + blockDiag' N :=
  rfl

section

variable (m' n' α)

/-- `Matrix.blockDiag'` as an `AddMonoidHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1948477240a9475eecea74b06b4b485f325670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
