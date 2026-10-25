# dualIndexEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4347782c147c49a18aaa6da71ad8e8f8b17e420b6308fa8ccd7edea21fb9f40",
  "kind": "def",
  "lexical_name": "dualIndexEquiv",
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
  "slug": "dualindexequiv--7eceb106207643f69052ab0e",
  "source": {
    "blob": "ac1303bfce48766587b60221472588ecb7aa6061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7eceb106207643f69052ab0e79c0629f877c6ed98b9fcbf2905761283a3411bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4347782c147c49a18aaa6da71ad8e8f8b17e420b6308fa8ccd7edea21fb9f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dualIndexEquiv (I : Finset ℕ) : OrbitIndex I ≃ OrbitIndex I where
  toFun i := (i.1, !i.2.1, i.2.2)
  invFun i := (i.1, !i.2.1, i.2.2)
  left_inv i := by
    rcases i with ⟨ε, δ, m⟩
    simp
  right_inv i := by
    rcases i with ⟨ε, δ, m⟩
    simp

/-- This is the repository's actual ambient angular-duality operator, so the
admitted coefficient evolution is validated beyond a snapshot diagram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac1303bfce48766587b60221472588ecb7aa6061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
