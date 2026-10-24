# native_touching_diagonal_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:384fefb2-3ff4-641d-8936-7267e7da52b6",
  "kind": "theorem",
  "lexical_name": "native_touching_diagonal_zero",
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
  "slug": "native-touching-diagonal-zero--fbcc8d032b3faac5b333c0d8",
  "source": {
    "blob": "bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/Analysis/InnerProductSpace/DilationResponseSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcc8d032b3faac5b333c0d83bc1065646b44005c6cd04959ee7cbe9d564ca6c",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:384fefb2-3ff4-641d-8936-7267e7da52b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_touching_diagonal_zero {n : ℕ} (hn : 1 ≤ n) :
    gram (Real.log (n : ℝ)) n n = 0 := by
  unfold gram
  calc
    (∫ u in Ioc 0 (Real.log (n : ℝ)), response n u * response n u) =
        ∫ _u : ℝ in Ioc 0 (Real.log (n : ℝ)), (0 : ℝ) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro u hu
      change response n u * response n u = 0
      by_cases htouch : u = Real.log (n : ℝ)
      · subst u
        rw [response_touching_atom_zero hn, zero_mul]
      · have before : ¬ Real.log (n : ℝ) ≤ u := by
          intro arrived
          exact htouch (le_antisymm hu.2 arrived)
        rw [response_of_not_arrived before, zero_mul]
    _ = 0 := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/DilationResponseSeparation.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
