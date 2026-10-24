# starModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c112e307be585e6f8423ffeb1482d6bbab67908",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 581,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da391ab-a793-92e2-e7b7-104506c0f02c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c65dbac-36e1-2bce-2f05-cd0508fead18",
  "kind": "lemma",
  "lexical_name": "starModule",
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
  "slug": "starmodule--2f82fe5583ff8c4faf0c6ad2",
  "source": {
    "blob": "7c112e307be585e6f8423ffeb1482d6bbab67908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 581,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f82fe5583ff8c4faf0c6ad20b11c1b9ad493e8262bc244966c225fb83839e53",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c65dbac-36e1-2bce-2f05-cd0508fead18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma starModule (𝕜 : Type*) [Star 𝕜] [SMul 𝕜 R]
    [Star R] [SMul 𝕜 S] [Star S] [StarModule 𝕜 S] (hf : Injective f)
    (star : ∀ x, f (star x) = star (f x)) (smul : ∀ (r : 𝕜) x, f (r • x) = r • f x) :
    StarModule 𝕜 R where
  star_smul r x := hf <| by rw [star, smul, star_smul, smul, star]

end Function.Injective

namespace MulOpposite

/-- The opposite type carries the same star operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c112e307be585e6f8423ffeb1482d6bbab67908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
