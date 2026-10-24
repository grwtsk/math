# isThreeCycle_isConj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aef17f50-39b3-eb17-fb2e-426f4c06816f",
  "kind": "theorem",
  "lexical_name": "isThreeCycle_isConj",
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
  "slug": "isthreecycle-isconj--27d195240b3ce67c0c5e7bc7",
  "source": {
    "blob": "e7bedb64954bbc139f053b9a9a8af0aadbb6667b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d195240b3ce67c0c5e7bc793de394061fb804d9f35bfb090271d367ca6fbf6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef17f50-39b3-eb17-fb2e-426f4c06816f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isThreeCycle_isConj (h5 : 5 ≤ Fintype.card α) {σ τ : alternatingGroup α}
    (hσ : IsThreeCycle (σ : Perm α)) (hτ : IsThreeCycle (τ : Perm α)) : IsConj σ τ :=
  alternatingGroup.isConj_of (isConj_iff_cycleType_eq.2 (hσ.trans hτ.symm))
    (by rwa [hσ.card_support])

end alternatingGroup

namespace Equiv.Perm

open alternatingGroup

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7bedb64954bbc139f053b9a9a8af0aadbb6667b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
