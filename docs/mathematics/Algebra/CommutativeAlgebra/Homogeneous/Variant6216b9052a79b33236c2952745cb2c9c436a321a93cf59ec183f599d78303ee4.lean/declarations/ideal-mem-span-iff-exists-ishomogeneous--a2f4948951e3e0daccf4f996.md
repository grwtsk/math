# Ideal.mem_span_iff_exists_isHomogeneous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49f8ec39-972f-135f-30ee-234d6c2e5a6c",
  "kind": "lemma",
  "lexical_name": "Ideal.mem_span_iff_exists_isHomogeneous",
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
  "slug": "ideal-mem-span-iff-exists-ishomogeneous--a2f4948951e3e0daccf4f996",
  "source": {
    "blob": "3cc1e1350ebe2badf24fe982c2f16290f8aeb006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 683,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f4948951e3e0daccf4f9967828c325fe071c1e251f8c18012e0074e7499c66",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f8ec39-972f-135f-30ee-234d6c2e5a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.mem_span_iff_exists_isHomogeneous {ι R : Type*} [CommSemiring R] (x : ι → R) (y : R) :
    y ∈ Ideal.span (.range x) ↔
      ∃ (p : MvPolynomial ι R), p.IsHomogeneous 1 ∧ p.eval x = y := by
  simp [Ideal.span_eq_map_homogeneousSubmodule]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc1e1350ebe2badf24fe982c2f16290f8aeb006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
