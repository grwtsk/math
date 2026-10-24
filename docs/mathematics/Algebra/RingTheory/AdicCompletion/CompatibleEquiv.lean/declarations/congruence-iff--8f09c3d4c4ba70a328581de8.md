# congruence_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af039c45-92b0-5e13-6fff-57869e4fc782",
  "kind": "theorem",
  "lexical_name": "congruence_iff",
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
  "slug": "congruence-iff--8f09c3d4c4ba70a328581de8",
  "source": {
    "blob": "870781fb5cf7b4db85f583d8d8f17032d6e0dd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f09c3d4c4ba70a328581de8ea34406fa60eac6688b4646cc087a44c1e2c1760",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af039c45-92b0-5e13-6fff-57869e4fc782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congruence_iff (e : ∀ n : ℕ, A ⧸ I ^ n ≃+* B ⧸ J ^ n)
    (he : Compatible I J (fun n => (e n).toRingHom)) (n : ℕ)
    (u v : AdicCompletion I A) :
    AdicCompletion.evalₐ J n (equivalence I J e he u) =
        AdicCompletion.evalₐ J n (equivalence I J e he v) ↔
      AdicCompletion.evalₐ I n u = AdicCompletion.evalₐ I n v := by
  rw [equivalence_projection, equivalence_projection]
  exact (e n).injective.eq_iff

end GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `870781fb5cf7b4db85f583d8d8f17032d6e0dd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
