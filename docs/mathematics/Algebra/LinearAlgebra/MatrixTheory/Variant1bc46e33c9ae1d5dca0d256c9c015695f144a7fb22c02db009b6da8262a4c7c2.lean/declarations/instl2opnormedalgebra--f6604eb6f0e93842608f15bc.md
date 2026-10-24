# instL2OpNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:466db658765b10de9403fdd7570baefdb3ecddad8731646fc331f08d141fac44",
  "kind": "def",
  "lexical_name": "instL2OpNormedAlgebra",
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
  "slug": "instl2opnormedalgebra--f6604eb6f0e93842608f15bc",
  "source": {
    "blob": "286b13c0d1f879d66a26bc46b04f5332950856c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 294,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6604eb6f0e93842608f15bcb2064e08a27dc800db5ccfb2716527b4e984429d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:466db658765b10de9403fdd7570baefdb3ecddad8731646fc331f08d141fac44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instL2OpNormedAlgebra : NormedAlgebra 𝕜 (Matrix n n 𝕜) where
  norm_smul_le := norm_smul_le

scoped[Matrix.Norms.L2Operator] attribute [instance] Matrix.instL2OpNormedAlgebra

/-- The operator norm on `Matrix n n 𝕜` given by the identification with (continuous) linear
endomorphisms of `EuclideanSpace 𝕜 n` makes it into a `L2OpRing`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286b13c0d1f879d66a26bc46b04f5332950856c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
