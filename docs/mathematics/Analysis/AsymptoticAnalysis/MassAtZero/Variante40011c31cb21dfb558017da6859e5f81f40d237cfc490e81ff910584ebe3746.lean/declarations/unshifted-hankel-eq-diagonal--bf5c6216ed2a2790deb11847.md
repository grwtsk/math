# unshifted_hankel_eq_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d9c6c7b-8e7c-5b5d-7d95-9ce3d0b1e5b3",
  "kind": "theorem",
  "lexical_name": "unshifted_hankel_eq_diagonal",
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
  "slug": "unshifted-hankel-eq-diagonal--bf5c6216ed2a2790deb11847",
  "source": {
    "blob": "98a4847ed74bd635065c584097329fccf2609632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 113,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5c6216ed2a2790deb1184721cbc16d315bd7b7e852ebe843081ad88e255efb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9c6c7b-8e7c-5b5d-7d95-9ce3d0b1e5b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unshifted_hankel_eq_diagonal (d : ℕ) :
    hankel d 0 = Matrix.diagonal (fun i => if i = 0 then 1 else 0) := by
  classical
  ext i j
  by_cases h : i.val + j.val + 0 + 1 = 1
  · have hi : i = 0 := Fin.ext (by simp only [Fin.val_zero]; omega)
    have hj : j = 0 := Fin.ext (by simp only [Fin.val_zero]; omega)
    simp [hankel, powerTrace_exact, hi, hj]
  · simp only [hankel, powerTrace_exact, if_neg h]
    by_cases hij : i = j
    · have hi : i ≠ 0 := by intro hi; subst i; subst j; simp at h
      subst j
      simp [hi]
    · simp [hij]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a4847ed74bd635065c584097329fccf2609632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
