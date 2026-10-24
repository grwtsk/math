# CorrectedSource.quadratic_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:743f59ce-bda4-1ad5-c6d1-a59926e59edd",
  "kind": "theorem",
  "lexical_name": "CorrectedSource.quadratic_defect",
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
  "slug": "correctedsource-quadratic-defect--a59bade408836d42ce3acbed",
  "source": {
    "blob": "06471027f12d85790c20ee7bce9f5dbd338ea737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a59bade408836d42ce3acbede8cd1209d704d52d7531421ed8a8f460eba58ce4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:743f59ce-bda4-1ad5-c6d1-a59926e59edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CorrectedSource.quadratic_defect {A N : Matrix n n 𝕜}
    (p : CorrectedSource A N) (x : n → 𝕜) :
    quadratic N x = quadratic A ((p.coordinates : Matrix n n 𝕜)*ᵥ x) +
      quadratic p.correction x := by
  conv_lhs => rw [p.identify]
  simp only [quadratic,Matrix.add_mulVec,dotProduct_add,RCLike.add_re]
  exact congrArg₂ (·+·) (quadratic_pullback A p.coordinates x) rfl

section Fixtures

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06471027f12d85790c20ee7bce9f5dbd338ea737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
