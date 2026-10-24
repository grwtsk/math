# cprankMax_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3ce8ecf0b244d86e0b601e5e74c1ab5761fc35c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05bd23aa-7b98-1b0c-1069-0ebf35b9f1f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:241ad527-075d-cdfc-62a6-1cba97095922",
  "kind": "theorem",
  "lexical_name": "cprankMax_add",
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
  "slug": "cprankmax-add--304285d69d6ab9b97d3d923a",
  "source": {
    "blob": "e3ce8ecf0b244d86e0b601e5e74c1ab5761fc35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:304285d69d6ab9b97d3d923a950852d72562f15710b20c7e2c706f42bf23f996",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241ad527-075d-cdfc-62a6-1cba97095922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cprankMax_add [Monoid α] [AddMonoid α] :
    ∀ {m : ℕ} {n : ℕ} {x : Holor α ds} {y : Holor α ds},
      CPRankMax m x → CPRankMax n y → CPRankMax (m + n) (x + y)
  | 0, n, x, y, hx, hy => by
    match hx with
    | CPRankMax.zero => simp only [zero_add, hy]
  | m + 1, n, _, y, CPRankMax.succ _ x₁ x₂ hx₁ hx₂, hy => by
    simp only [add_comm, add_assoc]
    apply CPRankMax.succ
    · assumption
    · -- Porting note: Single line is added.
      simp only [Nat.add_eq, add_zero, add_comm n m]
      exact cprankMax_add hx₂ hy
#align holor.cprank_max_add Holor.cprankMax_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3ce8ecf0b244d86e0b601e5e74c1ab5761fc35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
