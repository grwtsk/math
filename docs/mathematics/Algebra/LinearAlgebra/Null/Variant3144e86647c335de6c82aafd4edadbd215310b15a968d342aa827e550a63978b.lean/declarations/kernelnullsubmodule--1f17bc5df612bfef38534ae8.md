# kernelNullSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4960d0e9fd491f75076c13b921fdc8fee5d3cbea2a76e0c75b48676abc3a0e9d",
  "kind": "def",
  "lexical_name": "kernelNullSubmodule",
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
  "slug": "kernelnullsubmodule--1f17bc5df612bfef38534ae8",
  "source": {
    "blob": "3c0b5cf7c01440ce77f8c87c871d61bbc42640e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f17bc5df612bfef38534ae84f29fcc8a604d0b81effcaf27415e324bd073c12",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4960d0e9fd491f75076c13b921fdc8fee5d3cbea2a76e0c75b48676abc3a0e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kernelNullSubmodule : Submodule ℂ (Raw kernel) where
  carrier := {f | Raw.inner kernel f f = 0}
  zero_mem' := by
    simp [Raw.inner]
  add_mem' {f g} hf hg := by
    change Raw.inner kernel (f + g) (f + g) = 0
    rw [Raw.add_left, Raw.add_right, Raw.add_right,
      rawEnergyZero_orthogonal_all kernel hf g,
      rawEnergyZero_orthogonal_all kernel hg f, hf, hg]
    simp
  smul_mem' scalar f hf := by
    change Raw.inner kernel (scalar • f) (scalar • f) = 0
    rw [Raw.conjugate_linear_left, Raw.linear_right, hf]
    simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c0b5cf7c01440ce77f8c87c871d61bbc42640e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
