# mann_53

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3096b2d2-6ec4-d80d-d970-3aeed8e134b0",
  "kind": "lemma",
  "lexical_name": "mann_53",
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
  "slug": "mann-53--98e54be2d1aacb96de85a37a",
  "source": {
    "blob": "c3da9282cf8b8c26b363496bee948863bfe1ec81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e54be2d1aacb96de85a37a7a64d3e149a273708966959d2fc440e980b0ac6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3096b2d2-6ec4-d80d-d970-3aeed8e134b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mann_53 : -(q a + -(3 • a)) = a := by
  have k₁ := robbins a (q a + 4 • a)
  have rearr : a + (q a + 4 • a) = q a + 5 • a := by
    rw [smul4, smul5]
    ac_rfl
  rw [rearr, mann_51] at k₁
  have k₂ : -(-(q a + 3 • a + a) + a) = q a := mann_45 (3 • a) a
  have rearr₂ : -(q a + 3 • a + a) + a = a + -(q a + 4 • a) := by
    rw [smul3, smul4]
    ac_rfl
  rw [rearr₂] at k₂
  rw [k₂] at k₁
  rwa [add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3da9282cf8b8c26b363496bee948863bfe1ec81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
