# sumOfConjugatesEquivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1c463d0d1ba845806550ceaea3348a6584a8567e9901678842f280c4276c289",
  "kind": "def",
  "lexical_name": "sumOfConjugatesEquivariant",
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
  "slug": "sumofconjugatesequivariant--5e8ab56e01047767ebd56c1f",
  "source": {
    "blob": "1d0474598e46c987e40eac5331bfc6c7cb8c8ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e8ab56e01047767ebd56c1f311206c9e0ac00ae190ea65a4889a8028234d691",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1c463d0d1ba845806550ceaea3348a6584a8567e9901678842f280c4276c289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumOfConjugatesEquivariant : W →ₗ[k[G]] V :=
  MonoidAlgebra.equivariantOfLinearOfComm (π.sumOfConjugates G) fun g v => by
    simp only [sumOfConjugates_apply, Finset.smul_sum, conjugate_apply]
    refine Fintype.sum_bijective (· * g) (Group.mulRight_bijective g) _ _ fun i ↦ ?_
    simp only [smul_smul, single_mul_single, mul_inv_rev, mul_inv_cancel_left, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0474598e46c987e40eac5331bfc6c7cb8c8ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
