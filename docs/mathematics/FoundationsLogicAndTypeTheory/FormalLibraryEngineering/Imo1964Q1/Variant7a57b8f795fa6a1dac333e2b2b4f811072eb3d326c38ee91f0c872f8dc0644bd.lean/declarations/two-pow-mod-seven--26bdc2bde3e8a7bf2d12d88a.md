# two_pow_mod_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0811661468c4399b19d0514a8e44a0d1cf2a5a43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63062add-1fef-8de4-3689-fb70c407ff9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec19ec9e-50c9-311f-00cd-278bd759576b",
  "kind": "theorem",
  "lexical_name": "two_pow_mod_seven",
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
  "slug": "two-pow-mod-seven--26bdc2bde3e8a7bf2d12d88a",
  "source": {
    "blob": "0811661468c4399b19d0514a8e44a0d1cf2a5a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26bdc2bde3e8a7bf2d12d88ab6f2b672649297ab690a144dbdb5d24d94df79dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec19ec9e-50c9-311f-00cd-278bd759576b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_pow_mod_seven (n : ℕ) : 2 ^ n ≡ 2 ^ (n % 3) [MOD 7] :=
  let t := n % 3
  calc 2 ^ n = 2 ^ (3 * (n / 3) + t) := by rw [Nat.div_add_mod]
    _ = (2 ^ 3) ^ (n / 3) * 2 ^ t := by rw [pow_add, pow_mul]
    _ ≡ 1 ^ (n / 3) * 2 ^ t [MOD 7] := by gcongr; norm_num
    _ = 2 ^ t := by ring

/-!
## The question
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant7a57b8f795fa6a1dac333e2b2b4f811072eb3d326c38ee91f0c872f8dc0644bd.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0811661468c4399b19d0514a8e44a0d1cf2a5a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
