# leRecOn_succ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b941b2-d1d4-a003-7628-d2f5d4342065",
  "kind": "lemma",
  "lexical_name": "leRecOn_succ_left",
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
  "slug": "lerecon-succ-left--c45a8e8b63ff898e228d2ba3",
  "source": {
    "blob": "31d436f8c166c4b0251486a09f3faa202f4b2396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c45a8e8b63ff898e228d2ba3d76af937186589dfae69f72a759f2b674a351d32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b941b2-d1d4-a003-7628-d2f5d4342065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leRecOn_succ_left {C : ℕ → Sort*} {n m}
    {next : ∀ {k}, C k → C (k + 1)} (x : C n) (h1 : n ≤ m) (h2 : n + 1 ≤ m) :
    (leRecOn h2 next (next x) : C m) = (leRecOn h1 next x : C m) :=
  leRec_succ_left (motive := fun n _ => C n) _ (fun _ _ => @next _) _ _

/-- Recursion principle based on `<`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d436f8c166c4b0251486a09f3faa202f4b2396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
