# extractLsb'_extractAndExtendAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d20ed6d-12fa-11a0-4da0-ece979996987",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c847975-b314-a546-3c77-f4717088f16f",
  "kind": "theorem",
  "lexical_name": "extractLsb'_extractAndExtendAux",
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
  "slug": "extractlsb-extractandextendaux--c1ee96195e8f75fa7157432b",
  "source": {
    "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2522,
    "line": 2484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ee96195e8f75fa7157432b64d609667629e574c4dc8afe1271ddbf657c67c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c847975-b314-a546-3c77-f4717088f16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2484–2522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem extractLsb'_extractAndExtendAux {k len : Nat} {x : BitVec w}
    (acc : BitVec (k * len)) (hle : k ≤ w) :
    (∀ i (_ : i < k), acc.extractLsb' (i * len) len = (x.extractLsb' i 1).setWidth len) →
    (extractAndExtendAux k len x acc (by omega)).extractLsb' (i * len) len =
    (x.extractLsb' i 1).setWidth len := by
  intros hacc
  induction hwi : w - k generalizing acc k
  · case zero =>
    rw [extractAndExtendAux_zero (by omega)]
    by_cases hj : i < k
    · apply hacc
      exact hj
    · ext l hl
      have := mul_le_mul_right (n := k) (m := i) len (by omega)
      simp [← getLsbD_eq_getElem, getLsbD_extractLsb', hl, getLsbD_setWidth,
        show w ≤ i + l by omega, getLsbD_of_ge acc (i * len + l) (by omega)]
  · case succ n' ihn' =>
    rw [extractAndExtendAux]
    split
    · omega
    · apply ihn'
      · intros i hi
        have hcast : len + k * len = (k + 1) * len := by
            simp [Nat.mul_comm, Nat.mul_add, Nat.add_comm]

        by_cases hi' : i < k
        · have heq : extractLsb' (i * len) len (BitVec.cast hcast (extractAndExtendBit k len x ++ acc))  =
              extractLsb' (i * len) len ((extractAndExtendBit k len x ++ acc)) := by
            ext; simp
          rw [heq, extractLsb'_append_of_lt hi']
          apply hacc
          exact hi'
        · have heq : extractLsb' (i * len) len (BitVec.cast hcast (extractAndExtendBit k len x ++ acc))   =
              extractLsb' (i * len) len ((extractAndExtendBit k len x ++ acc)) := by
            ext; simp
          rw [heq, extractLsb'_append_of_eq (by omega)]
          simp [show i = k by omega, extractAndExtendBit]
      · omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean#L2484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b69a68eefa1987f13d13b2f6ef1b1314e79981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
