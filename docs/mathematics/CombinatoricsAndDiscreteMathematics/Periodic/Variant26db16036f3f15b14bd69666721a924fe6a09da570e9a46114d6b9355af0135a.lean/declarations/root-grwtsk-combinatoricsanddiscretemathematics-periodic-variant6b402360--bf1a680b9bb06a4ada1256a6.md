# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Periodic.Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.List.periodic_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbe30aeb-3728-bce4-f779-e8d185b66060",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Periodic.Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.List.periodic_prod",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-periodic-variant6b402360--bf1a680b9bb06a4ada1256a6",
  "source": {
    "blob": "33f72141fd8d53c2ef63bd3a8a60646ad5798ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant26db16036f3f15b14bd69666721a924fe6a09da570e9a46114d6b9355af0135a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf1a680b9bb06a4ada1256a6ef26bc203cf0ab88ecb55783fcadb603e091295c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Periodic/Variant26db16036f3f15b14bd69666721a924fe6a09da570e9a46114d6b9355af0135a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbe30aeb-3728-bce4-f779-e8d185b66060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Periodic.Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.List.periodic_prod [Add α] [MulOneClass β] (l : List (α → β))
    (hl : ∀ f ∈ l, Periodic f c) : Periodic l.prod c := by
  induction l with
  | nil => simp
  | cons g l ih =>
    rw [List.forall_mem_cons] at hl
    simpa only [List.prod_cons] using hl.1.mul (ih hl.2)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Periodic/Variant26db16036f3f15b14bd69666721a924fe6a09da570e9a46114d6b9355af0135a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant26db16036f3f15b14bd69666721a924fe6a09da570e9a46114d6b9355af0135a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33f72141fd8d53c2ef63bd3a8a60646ad5798ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
