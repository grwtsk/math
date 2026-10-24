# toContinuousLinearEquiv_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfeccbf4-cd32-dd27-9222-b49d22adfe92",
  "kind": "lemma",
  "lexical_name": "toContinuousLinearEquiv_inv",
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
  "slug": "tocontinuouslinearequiv-inv--a908696763ceb97a8477f180",
  "source": {
    "blob": "7c6d0772b3f88b177f40dc4688d0a53b08e69911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 838,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant8d4923feccd5db8f1ff862703a60fee821b6fdbf81b5f1d812597b408a825d4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a908696763ceb97a8477f18032f2f88945e9d8c15527d24bbd6bbf2d7a9f5be7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIsometry/Variant8d4923feccd5db8f1ff862703a60fee821b6fdbf81b5f1d812597b408a825d4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfeccbf4-cd32-dd27-9222-b49d22adfe92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toContinuousLinearEquiv_inv (e : E ≃ₗᵢ[R] E) :
    toContinuousLinearEquiv e⁻¹ = e.toContinuousLinearEquiv⁻¹ := rfl

/-! Lemmas about mixing the group structure with definitions. Because we have multiple ways to
express `LinearIsometryEquiv.refl`, `LinearIsometryEquiv.symm`, and
`LinearIsometryEquiv.trans`, we want simp lemmas for every combination.
The assumption made here is that if you're using the group structure, you want to preserve it
after simp.

This copies the approach used by the lemmas near `Equiv.Perm.trans_one`. -/


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIsometry/Variant8d4923feccd5db8f1ff862703a60fee821b6fdbf81b5f1d812597b408a825d4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant8d4923feccd5db8f1ff862703a60fee821b6fdbf81b5f1d812597b408a825d4f.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6d0772b3f88b177f40dc4688d0a53b08e69911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
