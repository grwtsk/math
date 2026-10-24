# coe_centralizer_centralizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c197c41a-7cc4-a021-9846-b6aef45038e2",
  "kind": "theorem",
  "lexical_name": "coe_centralizer_centralizer",
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
  "slug": "coe-centralizer-centralizer--e020eec5daca549534013b91",
  "source": {
    "blob": "be82659ca9a8106e4c6c5aff1f71645f088ca79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 340,
    "path": "GRWTSK/Algebra/Subalgebra/Variant542795ae6a168bcf36ff71d17ed4abdbcac360188a3687a200dcd1faee40a47a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e020eec5daca549534013b9192ded04a5217c058b7bdecf9930d8265f3a72a71",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant542795ae6a168bcf36ff71d17ed4abdbcac360188a3687a200dcd1faee40a47a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c197c41a-7cc4-a021-9846-b6aef45038e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_centralizer_centralizer (s : Set A) :
    (centralizer R (centralizer R s : Set A)) = (s ∪ star s).centralizer.centralizer := by
  rw [coe_centralizer, StarMemClass.star_coe_eq, Set.union_self, coe_centralizer]

end Centralizer

end StarSubalgebra

/-! ### The star closure of a subalgebra -/
namespace Subalgebra

open scoped Pointwise

variable {R A : Type*} [CommSemiring R] [StarRing R]
variable [Semiring A] [Algebra R A] [StarRing A] [StarModule R A]

/-- The pointwise `star` of a subalgebra is a subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant542795ae6a168bcf36ff71d17ed4abdbcac360188a3687a200dcd1faee40a47a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant542795ae6a168bcf36ff71d17ed4abdbcac360188a3687a200dcd1faee40a47a.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be82659ca9a8106e4c6c5aff1f71645f088ca79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
