# Polynomial.toMvPolynomial_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b059022e-7e69-e611-468d-049d5e757caf",
  "kind": "lemma",
  "lexical_name": "Polynomial.toMvPolynomial_injective",
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
  "slug": "polynomial-tomvpolynomial-injective--a54db9db7d944d0c363f7410",
  "source": {
    "blob": "4ac8977125a97356582d9457d2f2894f4fae51ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 755,
    "line": 749,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a54db9db7d944d0c363f74105362fb09784bccae7b99f17ec10e0db10ad4579b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b059022e-7e69-e611-468d-049d5e757caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Polynomial.toMvPolynomial_injective (i : σ) :
    Function.Injective (toMvPolynomial (R := R) i) := by
  simp only [toMvPolynomial_eq_rename_comp, AlgHom.coe_comp, AlgHom.coe_coe,
    EquivLike.injective_comp]
  exact MvPolynomial.rename_injective (fun x ↦ i) fun _ _ _ ↦ rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac8977125a97356582d9457d2f2894f4fae51ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
