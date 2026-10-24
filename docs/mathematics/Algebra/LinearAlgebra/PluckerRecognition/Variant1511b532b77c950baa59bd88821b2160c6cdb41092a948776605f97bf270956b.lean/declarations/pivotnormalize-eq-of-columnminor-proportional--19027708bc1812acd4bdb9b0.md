# pivotNormalize_eq_of_columnMinor_proportional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97287a1d-2dab-d902-d1fd-1e1a7dcb8a00",
  "kind": "theorem",
  "lexical_name": "pivotNormalize_eq_of_columnMinor_proportional",
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
  "slug": "pivotnormalize-eq-of-columnminor-proportional--19027708bc1812acd4bdb9b0",
  "source": {
    "blob": "8ca512b87491063da32a6bedb2603c000245a54f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19027708bc1812acd4bdb9b0a5cf94edae6d30374d6160850ce1ec7b994d0866",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97287a1d-2dab-d902-d1fd-1e1a7dcb8a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pivotNormalize_eq_of_columnMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hA : columnMinor A c ≠ 0) (hB : columnMinor B c ≠ 0)
    (t : ℝ) (ht : t ≠ 0)
    (h : ∀ d : Fin k → Fin n, columnMinor B d = t * columnMinor A d) :
    pivotNormalize A c = pivotNormalize B c := by
  apply Matrix.ext
  intro i j
  rw [pivotNormalize_entry_eq_ratio A c hA,
    pivotNormalize_entry_eq_ratio B c hB, h (Function.update c i j), h c]
  field_simp [ht, hA]

/-- Equality of actual full-rank row spaces produces an invertible row change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca512b87491063da32a6bedb2603c000245a54f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
