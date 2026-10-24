# fixture_missing_horizon_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c72e223-0b36-db8a-1647-3411b7ae7f77",
  "kind": "theorem",
  "lexical_name": "fixture_missing_horizon_coverage",
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
  "slug": "fixture-missing-horizon-coverage--5a9f4d8aff46e51738e41adf",
  "source": {
    "blob": "64cd8c1309f84658298d38c6cedf1b08eca26035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 446,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a9f4d8aff46e51738e41adf8a7132a88f0c89f7b76811ea8d805bb478998a3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c72e223-0b36-db8a-1647-3411b7ae7f77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture_missing_horizon_coverage :
    ¬ (∀ p, p.Prime → p ≤ (initial 4 (by omega)).horizon →
      p ∈ (initial 4 (by omega)).excluded) := by
  intro h
  have h2 := h 2 (by norm_num) (by norm_num [State.horizon, initial])
  simp [initial] at h2

/-- A negative record cannot migrate to an unrelated residual where it is false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64cd8c1309f84658298d38c6cedf1b08eca26035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
