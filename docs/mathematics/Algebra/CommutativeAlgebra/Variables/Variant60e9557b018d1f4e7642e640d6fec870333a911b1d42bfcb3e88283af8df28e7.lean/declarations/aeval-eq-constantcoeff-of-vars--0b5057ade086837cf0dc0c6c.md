# aeval_eq_constantCoeff_of_vars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d601478-0a92-64e5-aace-f13ce95a4ff3",
  "kind": "theorem",
  "lexical_name": "aeval_eq_constantCoeff_of_vars",
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
  "slug": "aeval-eq-constantcoeff-of-vars--0b5057ade086837cf0dc0c6c",
  "source": {
    "blob": "7c26cfa37c4e1d1880409f69f24595fd6610ae06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 826,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b5057ade086837cf0dc0c6ca66e50a66f90ae8aeffc1c2879a27e994001f6b5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d601478-0a92-64e5-aace-f13ce95a4ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_eq_constantCoeff_of_vars [Algebra R S] {g : σ → S} {p : MvPolynomial σ R}
    (hp : ∀ i ∈ p.vars, g i = 0) : aeval g p = algebraMap _ _ (constantCoeff p) :=
  eval₂Hom_eq_constantCoeff_of_vars _ hp
#align mv_polynomial.aeval_eq_constant_coeff_of_vars MvPolynomial.aeval_eq_constantCoeff_of_vars

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c26cfa37c4e1d1880409f69f24595fd6610ae06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
