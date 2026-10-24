# squaredRange_standard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a00c6031-051b-342d-ad7e-65de4497116a",
  "kind": "theorem",
  "lexical_name": "squaredRange_standard",
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
  "slug": "squaredrange-standard--f25c0f5cb3cad3ffb3ca6fd9",
  "source": {
    "blob": "3e65414aa5b98c2b24e0235b76991636dc46a77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 420,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f25c0f5cb3cad3ffb3ca6fd95561d22dc7f4593bad046b623b9147e306b5d5c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a00c6031-051b-342d-ad7e-65de4497116a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squaredRange_standard {n : Nat} (x : Fin n → ℝ) (i : Fin n) :
    squaredRange x (standardBeacon i) = chartNormSq x - 2 * x i + 1 := by
  classical
  calc
    squaredRange x (standardBeacon i) =
        ∑ j, ((x j) ^ 2 + if j = i then (1 - 2 * x j) else 0) := by
          apply Finset.sum_congr rfl
          intro j _
          by_cases hji : j = i
          · subst j
            simp [standardBeacon]
            ring
          · simp [standardBeacon, hji]
    _ = chartNormSq x + ∑ j, if j = i then (1 - 2 * x j) else 0 := by
          rw [Finset.sum_add_distrib]
          rfl
    _ = chartNormSq x + (1 - 2 * x i) := by simp
    _ = chartNormSq x - 2 * x i + 1 := by ring

/-- Squared ranges to `0,e₁,…,eₙ` reconstruct every coordinate exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e65414aa5b98c2b24e0235b76991636dc46a77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
