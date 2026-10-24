# equivFixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad3086f6f31821cb60fec4dc82d14e2eb8268bb01a9a4596fd1887ad458bc923",
  "kind": "def",
  "lexical_name": "equivFixedPoints",
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
  "slug": "equivfixedpoints--24dec830fdfc208209156d5c",
  "source": {
    "blob": "8ec7b5da63eed7517122a2d800e2bebb35574383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24dec830fdfc208209156d5ce490af3cf466aec1ba54baa31cea2347f17282d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad3086f6f31821cb60fec4dc82d14e2eb8268bb01a9a4596fd1887ad458bc923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivFixedPoints : R.leftFixedPoints ≃ R.rightFixedPoints where
  toFun := fun ⟨J, _⟩ => ⟨R.leftDual J, R.leftDual_mem_rightFixedPoint J⟩
  invFun := fun ⟨I, _⟩ => ⟨R.rightDual I, R.rightDual_mem_leftFixedPoint I⟩
  left_inv J := by obtain ⟨J, hJ⟩ := J; rw [Subtype.mk.injEq, hJ]
  right_inv I := by obtain ⟨I, hI⟩ := I; rw [Subtype.mk.injEq, hI]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec7b5da63eed7517122a2d800e2bebb35574383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
