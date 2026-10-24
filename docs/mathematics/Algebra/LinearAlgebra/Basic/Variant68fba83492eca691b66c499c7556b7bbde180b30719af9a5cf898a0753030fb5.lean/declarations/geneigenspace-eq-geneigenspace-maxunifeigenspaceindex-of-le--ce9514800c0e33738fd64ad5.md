# genEigenspace_eq_genEigenspace_maxUnifEigenspaceIndex_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23b23476-424d-1994-dc15-733040c96bac",
  "kind": "theorem",
  "lexical_name": "genEigenspace_eq_genEigenspace_maxUnifEigenspaceIndex_of_le",
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
  "slug": "geneigenspace-eq-geneigenspace-maxunifeigenspaceindex-of-le--ce9514800c0e33738fd64ad5",
  "source": {
    "blob": "618cc0f141aa2442be86674c4b73902ead7ebd0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 327,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce9514800c0e33738fd64ad531601f3dff409460827f6334d9998f7c2e4c2e78",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23b23476-424d-1994-dc15-733040c96bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genEigenspace_eq_genEigenspace_maxUnifEigenspaceIndex_of_le [IsNoetherian R M]
    (f : End R M) (μ : R) {k : ℕ} (hk : maxUnifEigenspaceIndex f μ ≤ k) :
    f.genEigenspace μ k = f.genEigenspace μ (maxUnifEigenspaceIndex f μ) :=
  le_antisymm
    (genEigenspace_le_genEigenspace_maxUnifEigenspaceIndex _ _ _)
    ((f.genEigenspace μ).monotone <| by simpa using hk)

/-- A generalized eigenvalue for some exponent `k` is also
a generalized eigenvalue for exponents larger than `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618cc0f141aa2442be86674c4b73902ead7ebd0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
