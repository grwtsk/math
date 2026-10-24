# getVert_takeUntil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fbb005201509073aea8c64afb55ad984e028c18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba873998-4e4b-08e1-ed43-bb2536df51dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b1f6b73-81fa-43c0-e9ea-935c0a312142",
  "kind": "lemma",
  "lexical_name": "getVert_takeUntil",
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
  "slug": "getvert-takeuntil--36fd6ff1baa50755c952b5d2",
  "source": {
    "blob": "8fbb005201509073aea8c64afb55ad984e028c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36fd6ff1baa50755c952b5d2c984bf8fe248a3dd3ffe884c17b258d4b6706212",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b1f6b73-81fa-43c0-e9ea-935c0a312142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma getVert_takeUntil {u v : V} {n : ℕ} {p : G.Walk u v} (hw : w ∈ p.support)
    (hn : n ≤ (p.takeUntil w hw).length) : (p.takeUntil w hw).getVert n = p.getVert n := by
  cases p with
  | nil => simp only [support_nil, List.mem_singleton] at hw; aesop
  | cons h q =>
    by_cases huw : w = u
    · subst huw
      simp_all
    simp only [support_cons, List.mem_cons, huw, false_or] at hw
    by_cases hn0 : n = 0
    · aesop
    simp only [takeUntil_cons hw ((Ne.eq_def _ _).mpr huw).symm, length_cons,
      getVert_cons _ _ hn0] at hn ⊢
    apply q.getVert_takeUntil hw
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fbb005201509073aea8c64afb55ad984e028c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
