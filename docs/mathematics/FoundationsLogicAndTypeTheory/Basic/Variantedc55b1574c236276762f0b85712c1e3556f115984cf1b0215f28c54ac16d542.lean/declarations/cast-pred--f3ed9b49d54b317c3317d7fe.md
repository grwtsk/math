# cast_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1dee1beb8749636551f65187302175a0edb5b804",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddaa1a4f-e33e-407d-8cdf-671dd8f5b32c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49d54100-2b28-3f9d-0365-50a855432ba3",
  "kind": "theorem",
  "lexical_name": "cast_pred",
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
  "slug": "cast-pred--f3ed9b49d54b317c3317d7fe",
  "source": {
    "blob": "1dee1beb8749636551f65187302175a0edb5b804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3ed9b49d54b317c3317d7fe58c2686dfb778b0b0fbab4b12b3604f47394ce74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49d54100-2b28-3f9d-0365-50a855432ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_pred : ∀ {n}, 0 < n → ((n - 1 : ℕ) : R) = n - 1
  | 0, h => by cases h
  | n + 1, _ => by rw [cast_succ, add_sub_cancel_right, Nat.add_sub_cancel_right]

end Nat

open Nat

namespace Int

variable {R : Type u} [AddGroupWithOne R]

-- TODO: I don't like that `norm_cast` is used here, because it results in `norm_cast`
-- introducing the "implementation detail" `Int.negSucc`.
@[simp, norm_cast squash]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dee1beb8749636551f65187302175a0edb5b804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
