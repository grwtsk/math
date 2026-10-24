# one_le_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd80fc31-cc77-55ed-3736-740e062bb821",
  "kind": "lemma",
  "lexical_name": "one_le_prod",
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
  "slug": "one-le-prod--a60aa635ccc16aaa81e3e903",
  "source": {
    "blob": "ede3d5a3ae813d5f11380e8a60017ab3907b01cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60aa635ccc16aaa81e3e90387722499bfd8bbc9c5342cbca615bb45c9b3fb5f",
  "verification": {
    "reference": "docs/verification/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd80fc31-cc77-55ed-3736-740e062bb821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_le_prod {s : List R} (h : ∀ a ∈ s, 1 ≤ a) : 1 ≤ s.prod := by
  induction s with
  | nil => simp
  | cons head tail hind =>
    simp only [prod_cons]
    simp only [mem_cons, forall_eq_or_imp] at h
    exact one_le_mul_of_one_le_of_one_le h.1 (hind h.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/List/Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede3d5a3ae813d5f11380e8a60017ab3907b01cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
