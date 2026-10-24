# abs_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b4bf147-5cb8-ca4b-9ba7-2bb5efa8d6a5",
  "kind": "lemma",
  "lexical_name": "abs_pow_eq_one",
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
  "slug": "abs-pow-eq-one--140d5c702a7d1f22710b0b18",
  "source": {
    "blob": "c97cf907e11560c4ba70c22e5115ffc1c218c1ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140d5c702a7d1f22710b0b187167764ed49ca6ec3bf86113a0b7de96f66130a4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4bf147-5cb8-ca4b-9ba7-2bb5efa8d6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_pow_eq_one (a : α) (h : n ≠ 0) : |a ^ n| = 1 ↔ |a| = 1 := by
  convert pow_left_inj₀ (abs_nonneg a) zero_le_one h
  exacts [(pow_abs _ _).symm, (one_pow _).symm]

omit [IsStrictOrderedRing α] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c97cf907e11560c4ba70c22e5115ffc1c218c1ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
