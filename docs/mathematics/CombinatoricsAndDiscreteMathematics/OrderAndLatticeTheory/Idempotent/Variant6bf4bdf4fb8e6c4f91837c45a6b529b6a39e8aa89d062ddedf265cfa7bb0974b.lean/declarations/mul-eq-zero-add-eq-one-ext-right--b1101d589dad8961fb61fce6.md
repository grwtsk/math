# mul_eq_zero_add_eq_one_ext_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fa44622-dabd-38b9-df3f-2f9a3d2dafac",
  "kind": "lemma",
  "lexical_name": "mul_eq_zero_add_eq_one_ext_right",
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
  "slug": "mul-eq-zero-add-eq-one-ext-right--b1101d589dad8961fb61fce6",
  "source": {
    "blob": "acdc58cb486537b7cc01319e2a8f386f0df864a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1101d589dad8961fb61fce6896ced88c32344065bb23e5dda82bf5613c52f2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa44622-dabd-38b9-df3f-2f9a3d2dafac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_eq_zero_add_eq_one_ext_right (eq : a.1.2 = b.1.2) : a = b := by
  refine Subtype.ext <| Prod.ext_iff.mpr ⟨eq_of_mul_eq_add_eq_one a.1.2 ?_ ?_ ?_, eq⟩
  · rw [mul_comm, a.2.1, eq, b.2.1]
  · rw [add_comm, a.2.2]
  · rw [add_comm, eq, b.2.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acdc58cb486537b7cc01319e2a8f386f0df864a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
