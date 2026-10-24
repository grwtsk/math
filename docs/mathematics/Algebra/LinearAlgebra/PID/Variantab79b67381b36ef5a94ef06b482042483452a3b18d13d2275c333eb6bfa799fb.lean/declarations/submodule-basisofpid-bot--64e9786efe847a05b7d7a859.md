# Submodule.basisOfPid_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:931f29e0-932a-639b-7c59-1c3de91746e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:271e076b-078d-1543-450a-03c81a4c0bf9",
  "kind": "theorem",
  "lexical_name": "Submodule.basisOfPid_bot",
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
  "slug": "submodule-basisofpid-bot--64e9786efe847a05b7d7a859",
  "source": {
    "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 308,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64e9786efe847a05b7d7a859a8aaeb1e763075152729d8de6236c352447ec565",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:271e076b-078d-1543-450a-03c81a4c0bf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.basisOfPid_bot {ι : Type*} [Finite ι] (b : Basis ι R M) :
    Submodule.basisOfPid b ⊥ = ⟨0, Basis.empty _⟩ := by
  obtain ⟨n, b'⟩ := Submodule.basisOfPid b ⊥
  let e : Fin n ≃ Fin 0 := b'.indexEquiv (Basis.empty _ : Basis (Fin 0) R (⊥ : Submodule R M))
  obtain rfl : n = 0 := by simpa using Fintype.card_eq.mpr ⟨e⟩
  exact Sigma.eq rfl (Basis.eq_of_apply_eq <| finZeroElim)

/-- A submodule inside a free `R`-submodule of finite rank is also a free `R`-module of finite rank,
if `R` is a principal ideal domain.

See also the stronger version `Submodule.smithNormalFormOfLE`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
