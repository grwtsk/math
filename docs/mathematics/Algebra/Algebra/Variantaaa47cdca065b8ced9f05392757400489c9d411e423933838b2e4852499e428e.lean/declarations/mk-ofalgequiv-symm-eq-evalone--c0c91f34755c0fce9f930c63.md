# mk_ofAlgEquiv_symm_eq_evalOneₐ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a20cbde-6286-fe9e-6bfa-4242ad034159",
  "kind": "lemma",
  "lexical_name": "mk_ofAlgEquiv_symm_eq_evalOneₐ",
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
  "slug": "mk-ofalgequiv-symm-eq-evalone--c0c91f34755c0fce9f930c63",
  "source": {
    "blob": "03c593a37007f01f83dc6c9fb32a0b1a74063944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 472,
    "path": "GRWTSK/Algebra/Algebra/Variantaaa47cdca065b8ced9f05392757400489c9d411e423933838b2e4852499e428e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c91f34755c0fce9f930c63e61082f152f8103ac0de5d5f9491369700b70738",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variantaaa47cdca065b8ced9f05392757400489c9d411e423933838b2e4852499e428e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a20cbde-6286-fe9e-6bfa-4242ad034159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_ofAlgEquiv_symm_eq_evalOneₐ (x : AdicCompletion I S) :
    Ideal.Quotient.mk I ((ofAlgEquiv I).symm x) = evalOneₐ I x := by
  simp [evalOneₐ, ← mk_ofAlgEquiv_symm]

end liftRingHom

section

variable {A : Type*} [CommRing A] [Algebra R A] [Algebra R S]

/-- The canonical projection from the `I`-adic completion of `S` to `S ⧸ I`. Defined
in terms of a surjective map `S →ₐ[R] A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variantaaa47cdca065b8ced9f05392757400489c9d411e423933838b2e4852499e428e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variantaaa47cdca065b8ced9f05392757400489c9d411e423933838b2e4852499e428e.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c593a37007f01f83dc6c9fb32a0b1a74063944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
