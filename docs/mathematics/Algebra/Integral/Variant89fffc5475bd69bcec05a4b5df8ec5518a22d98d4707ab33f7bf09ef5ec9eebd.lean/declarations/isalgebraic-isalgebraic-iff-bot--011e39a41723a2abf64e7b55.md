# IsAlgebraic.isAlgebraic_iff_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e526f7b3132d857de949d9dbd79e1352b9dedf5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29e49c75-6d38-71e7-8652-8413140a71cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0e97662-61e2-e2d0-b8c9-3209e713759a",
  "kind": "theorem",
  "lexical_name": "IsAlgebraic.isAlgebraic_iff_bot",
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
  "slug": "isalgebraic-isalgebraic-iff-bot--011e39a41723a2abf64e7b55",
  "source": {
    "blob": "e526f7b3132d857de949d9dbd79e1352b9dedf5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 377,
    "path": "GRWTSK/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011e39a41723a2abf64e7b55fa672c93840ad3ee991750a16658d554df758ca1",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e97662-61e2-e2d0-b8c9-3209e713759a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAlgebraic.isAlgebraic_iff_bot [Algebra.IsAlgebraic S A] [FaithfulSMul S A] :
    Algebra.IsAlgebraic R A ↔ Algebra.IsAlgebraic R S :=
  ⟨fun _ ↦ .tower_bot_of_injective (FaithfulSMul.algebraMap_injective S A), fun _ ↦ .trans R S A⟩

end Algebra

variable (R S)
/-- If `R` is a domain and `S` is an arbitrary `R`-algebra, then the elements of `S`
that are algebraic over `R` form a subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e526f7b3132d857de949d9dbd79e1352b9dedf5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
