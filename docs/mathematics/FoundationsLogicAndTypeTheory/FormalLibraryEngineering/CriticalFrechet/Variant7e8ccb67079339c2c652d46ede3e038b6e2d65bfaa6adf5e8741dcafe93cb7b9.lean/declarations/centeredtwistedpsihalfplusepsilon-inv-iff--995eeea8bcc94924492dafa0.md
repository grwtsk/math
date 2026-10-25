# centeredTwistedPsiHalfPlusEpsilon_inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "400084a108e70a2b7f1543afb579160f93a3a817",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10e0c8c9-e6a3-3ad6-c896-dcd294e5d49b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3df6947-e5e1-5c67-6b4b-86930be20144",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiHalfPlusEpsilon_inv_iff",
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
  "slug": "centeredtwistedpsihalfplusepsilon-inv-iff--995eeea8bcc94924492dafa0",
  "source": {
    "blob": "400084a108e70a2b7f1543afb579160f93a3a817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalFrechet/Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:995eeea8bcc94924492dafa08d719f0941a45f4aa9a73fdb7cd7d7f7fc1831c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalFrechet/Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3df6947-e5e1-5c67-6b4b-86930be20144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiHalfPlusEpsilon_inv_iff
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    CenteredTwistedPsiHalfPlusEpsilon χ⁻¹ ↔
      CenteredTwistedPsiHalfPlusEpsilon χ := by
  unfold CenteredTwistedPsiHalfPlusEpsilon
  constructor
  · intro hInv ε hε
    exact (hasWeightedSummatoryBound_congr_norm
      (fun x ↦ centeredTwistedPsi_inv_norm χ x)).mp (hInv ε hε)
  · intro hχ ε hε
    exact (hasWeightedSummatoryBound_congr_norm
      (fun x ↦ centeredTwistedPsi_inv_norm χ x)).mpr (hχ ε hε)

/-- In particular, every half-plus-epsilon bound transfers to the inverse
character. -/
@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalFrechet/Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalFrechet/Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400084a108e70a2b7f1543afb579160f93a3a817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
