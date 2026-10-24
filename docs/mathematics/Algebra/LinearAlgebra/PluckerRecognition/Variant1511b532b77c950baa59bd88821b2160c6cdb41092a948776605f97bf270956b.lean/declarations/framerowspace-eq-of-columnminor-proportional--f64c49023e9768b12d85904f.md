# frameRowSpace_eq_of_columnMinor_proportional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc7a8749-7283-8db4-6a81-514bc26ec392",
  "kind": "theorem",
  "lexical_name": "frameRowSpace_eq_of_columnMinor_proportional",
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
  "slug": "framerowspace-eq-of-columnminor-proportional--f64c49023e9768b12d85904f",
  "source": {
    "blob": "8ca512b87491063da32a6bedb2603c000245a54f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f64c49023e9768b12d85904f8aabcf28011e803cf3404dd3145ec3a280d68ba3",
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

Occurrence: `result:dc7a8749-7283-8db4-6a81-514bc26ec392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frameRowSpace_eq_of_columnMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k)
    (t : ℝ) (ht : t ≠ 0)
    (h : ∀ c : Fin k → Fin n, columnMinor B c = t * columnMinor A c) :
    frameRowSpace A = frameRowSpace B := by
  obtain ⟨c, hcA⟩ := exists_columnMinor_ne_zero_of_rank A hA
  have hcB : columnMinor B c ≠ 0 := by
    rw [h c]
    exact mul_ne_zero ht hcA
  apply (pivotNormalize_eq_iff_rowSpace A B c hcA hcB).mp
  exact pivotNormalize_eq_of_columnMinor_proportional A B c hcA hcB t ht h

/-- General projective Pluecker recognition for actual full-rank real matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca512b87491063da32a6bedb2603c000245a54f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
