# rTensorAlgEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77fcc22c-8c9e-7eff-6466-97ac6baf72b9",
  "kind": "lemma",
  "lexical_name": "rTensorAlgEquiv_apply",
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
  "slug": "rtensoralgequiv-apply--25dd18c655f8cc41b347252e",
  "source": {
    "blob": "9194f3a7bf1caeb70022dc09a26c65cd7250cd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 196,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25dd18c655f8cc41b347252eab9bd0b349a27bbbfb576f7ea1d5ef4043efcfc3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77fcc22c-8c9e-7eff-6466-97ac6baf72b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rTensorAlgEquiv_apply (x : (MvPolynomial σ S) ⊗[R] N) :
    rTensorAlgEquiv x = rTensorAlgHom x := by
  rw [← AlgHom.coe_coe, ← AlgEquiv.toAlgHom_eq_coe]
  congr 1
  ext _ d <;> simpa [rTensorAlgEquiv] using rTensor_apply_tmul_apply _ _ d

/-- The tensor product of the polynomial algebra by an algebra
  is algebraically equivalent to a polynomial algebra with
  coefficients in that algegra -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9194f3a7bf1caeb70022dc09a26c65cd7250cd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
