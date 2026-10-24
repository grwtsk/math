# shifted_eq_spectral_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cae3a154-6e21-056a-eada-17d938066fe3",
  "kind": "theorem",
  "lexical_name": "shifted_eq_spectral_conjugate",
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
  "slug": "shifted-eq-spectral-conjugate--293f81dbb25dc67752916d6b",
  "source": {
    "blob": "d6cce32a128eef928911e54d44a52e8cb95d10b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:293f81dbb25dc67752916d6bd179488185ce16d1bb9848abeaf462e7122dc9d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cae3a154-6e21-056a-eada-17d938066fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_eq_spectral_conjugate {A : Matrix n n ℝ}
    (hA : A.IsHermitian) (lam : ℝ) :
    shifted A lam = conjStarAlgAut ℝ _ hA.eigenvectorUnitary
      (diagonal (fun i => hA.eigenvalues i - lam)) := by
  have hdiag : diagonal (fun i => hA.eigenvalues i - lam) =
      diagonal hA.eigenvalues - lam • (1 : Matrix n n ℝ) := by
    ext i j
    by_cases hij : i = j <;> simp [hij]
  rw [hdiag, map_sub, map_smul]
  simp only [map_one]
  simpa [shifted, Function.comp_def] using congrArg
    (fun M : Matrix n n ℝ => M - lam • (1 : Matrix n n ℝ)) hA.spectral_theorem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6cce32a128eef928911e54d44a52e8cb95d10b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
