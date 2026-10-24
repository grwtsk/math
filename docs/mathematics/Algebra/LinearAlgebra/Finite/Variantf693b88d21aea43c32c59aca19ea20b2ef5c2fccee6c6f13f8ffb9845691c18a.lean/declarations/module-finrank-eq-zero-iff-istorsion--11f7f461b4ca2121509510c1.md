# Module.finrank_eq_zero_iff_isTorsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:710e1a8c-7398-871b-7c4a-cfcf6e43db7b",
  "kind": "theorem",
  "lexical_name": "Module.finrank_eq_zero_iff_isTorsion",
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
  "slug": "module-finrank-eq-zero-iff-istorsion--11f7f461b4ca2121509510c1",
  "source": {
    "blob": "82216a2e3a270d5d7a955d9756fd95b9839df75c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f7f461b4ca2121509510c1a56a20854469a7c25684bfe62fc60284368cfefe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:710e1a8c-7398-871b-7c4a-cfcf6e43db7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.finrank_eq_zero_iff_isTorsion [StrongRankCondition R] [Module.Finite R M] :
    finrank R M = 0 ↔ Module.IsTorsion R M := by
  rw [← rank_eq_zero_iff_isTorsion (R := R), ← finrank_eq_rank]
  norm_cast
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82216a2e3a270d5d7a955d9756fd95b9839df75c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
