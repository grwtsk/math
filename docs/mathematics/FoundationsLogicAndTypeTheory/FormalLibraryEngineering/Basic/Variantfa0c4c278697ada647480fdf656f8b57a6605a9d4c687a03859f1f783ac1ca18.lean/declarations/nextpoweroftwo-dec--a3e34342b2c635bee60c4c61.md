# nextPowerOfTwo_dec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a484ea57198b89fa850fca6fb910efffb4d130f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a5732c9-0a92-1e80-90d5-d9844bfe461a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a463c68-d2c0-cd42-f1a1-20af0de3bdde",
  "kind": "theorem",
  "lexical_name": "nextPowerOfTwo_dec",
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
  "slug": "nextpoweroftwo-dec--a3e34342b2c635bee60c4c61",
  "source": {
    "blob": "5a484ea57198b89fa850fca6fb910efffb4d130f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e34342b2c635bee60c4c61192e9df623b91d7c72ec604fa81b3fd6ad2fbe1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a463c68-d2c0-cd42-f1a1-20af0de3bdde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nextPowerOfTwo_dec {n power : Nat} (h₁ : power > 0) (h₂ : power < n) : n - power * 2 < n - power := by
  have : power * 2 = power + power := by simp +arith
  rw [this, Nat.sub_add_eq]
  exact Nat.sub_lt (Nat.zero_lt_sub_of_lt h₂) h₁

/--
Returns the least power of two that's greater than or equal to `n`.

Examples:
 * `Nat.nextPowerOfTwo 0 = 1`
 * `Nat.nextPowerOfTwo 1 = 1`
 * `Nat.nextPowerOfTwo 2 = 2`
 * `Nat.nextPowerOfTwo 3 = 4`
 * `Nat.nextPowerOfTwo 5 = 8`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a484ea57198b89fa850fca6fb910efffb4d130f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
