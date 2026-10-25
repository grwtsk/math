# rename_next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98ffb1ad-8faa-a9e1-e779-d4b2e37300f9",
  "kind": "theorem",
  "lexical_name": "rename_next",
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
  "slug": "rename-next--a03d8034abe794968861aae0",
  "source": {
    "blob": "833c93b27c1f01fb7f3b375c689dea8e4a2fddaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a03d8034abe794968861aae0d07421854e7f8bbd9af60a151d7c7ce7396eb341",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ffb1ad-8faa-a9e1-e779-d4b2e37300f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_next {n : Nat} {M A : Expr S}
    (h : HasType P (contexts P h₀ n) (M.rename (Expr.reverseIndex n))
      (A.rename (Expr.reverseIndex n))) :
    HasType P (contexts P h₀ (n + 1)) (M.rename (Expr.reverseIndex (n + 1)))
      (A.rename (Expr.reverseIndex (n + 1))) := by
  have hm : M.Scoped n := by
    have hh := h.scope.1.reverseIndex
    rw [length, Expr.reverseIndex_twice] at hh
    exact hh
  have ha : A.Scoped n := by
    have hh := h.scope.2.reverseIndex
    rw [length, Expr.reverseIndex_twice] at hh
    exact hh
  obtain ⟨D, s, ht, he⟩ := step P h₀ n
  rw [he, hm.reverseIndex_succ, ha.reverseIndex_succ]
  exact .weaken h ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `833c93b27c1f01fb7f3b375c689dea8e4a2fddaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
