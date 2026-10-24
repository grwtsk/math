# incomplete_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:623eb0f6-664e-8ff5-43a6-c09c94e0728f",
  "kind": "theorem",
  "lexical_name": "incomplete_eq_self_iff",
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
  "slug": "incomplete-eq-self-iff--f1315e0deabac66a7a72e482",
  "source": {
    "blob": "8095a2df121c53e917563566376be2536c1a7bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1315e0deabac66a7a72e482d285df2901b760e68086c11be8509d12699d9922",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623eb0f6-664e-8ff5-43a6-c09c94e0728f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incomplete_eq_self_iff (f : G → ℂ) :
    incompleteReconstruction f = f ↔ coefficientMap (0 : AddChar G ℂ) f = 0 := by
  constructor
  · intro h
    have hs := congrFun (reconstruction_split f) (0 : G)
    rw [h] at hs
    simpa using (add_right_eq_self.mp hs.symm)
  · intro h
    simpa [h] using (reconstruction_split f).symm

/-- The span omitting the trivial basis vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8095a2df121c53e917563566376be2536c1a7bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
