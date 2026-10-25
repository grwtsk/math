# ker_coFG_iff_hasFiniteRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b8b283116e793b99ce5df4f3c7c28ae9df046c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19b6f7ebe2191f3126bfecca6cebcfff6a415f118afa00de70301a71db19a66b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c19e568-bfdd-36ab-2438-3f0cc46e3269",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2709c0d7-1dda-3963-3c31-8178379cd060",
  "kind": "theorem",
  "lexical_name": "ker_coFG_iff_hasFiniteRange",
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
  "slug": "ker-cofg-iff-hasfiniterange--02a94ffb5d59a9dbe9f2c9bc",
  "source": {
    "blob": "6b8b283116e793b99ce5df4f3c7c28ae9df046c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant19b6f7ebe2191f3126bfecca6cebcfff6a415f118afa00de70301a71db19a66b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a94ffb5d59a9dbe9f2c9bc8f6e275403fce503c160e0a9af4962b159db5977",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant19b6f7ebe2191f3126bfecca6cebcfff6a415f118afa00de70301a71db19a66b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2709c0d7-1dda-3963-3c31-8178379cd060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_coFG_iff_hasFiniteRange {f : V →ₗ[K] V₂} :
    f.ker.CoFG ↔ f.HasFiniteRange :=
  range_fg_iff_ker_cofg.symm

alias ⟨HasNoetherianRange.quotient_ker, _⟩ := hasNoetherianRange_iff_quotient_ker
alias ⟨_, HasFiniteRange.cofg_ker⟩ := ker_coFG_iff_hasFiniteRange

end Ring

section CommRing

variable [CommRing K]
  [AddCommGroup V] [Module K V]
  [AddCommGroup V₂] [Module K V₂]
  [AddCommGroup V₃] [Module K V₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant19b6f7ebe2191f3126bfecca6cebcfff6a415f118afa00de70301a71db19a66b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant19b6f7ebe2191f3126bfecca6cebcfff6a415f118afa00de70301a71db19a66b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b8b283116e793b99ce5df4f3c7c28ae9df046c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
