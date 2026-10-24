# permMatrix_mem_doublyStochastic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b99982d-7d6b-3cf9-02f6-6238c358606d",
  "kind": "lemma",
  "lexical_name": "permMatrix_mem_doublyStochastic",
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
  "slug": "permmatrix-mem-doublystochastic--030a11e87ec0a2bc456a8cf2",
  "source": {
    "blob": "b1c7453b6a11bb6e14366d526702480a75f3f69f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 105,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:030a11e87ec0a2bc456a8cf2204d0796c9c9f08d12adf068347afc2750d9113c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b99982d-7d6b-3cf9-02f6-6238c358606d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma permMatrix_mem_doublyStochastic {σ : Equiv.Perm n} :
    σ.permMatrix R ∈ doublyStochastic R n := by
  rw [mem_doublyStochastic_iff_sum]
  refine ⟨fun i j => ?g1, ?g2, ?g3⟩
  case g1 => aesop
  case g2 => simp [Equiv.toPEquiv_apply]
  case g3 => simp [Equiv.toPEquiv_apply, ← Equiv.eq_symm_apply]

end OrderedSemiring

section LinearOrderedSemifield

variable [Semifield R] [LinearOrder R] [IsStrictOrderedRing R]

/--
A matrix is `s` times a doubly stochastic matrix iff all entries are nonnegative, and all row and
column sums are equal to `s`.

This lemma is useful for the proof of Birkhoff's theorem - in particular because it allows scaling
by nonnegative factors rather than positive ones only.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1c7453b6a11bb6e14366d526702480a75f3f69f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
