# shiftLeft_add_eq_shiftLeft_or

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
      "line": 2153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7fd7161-fcb4-19cd-d1ca-788ec5812974",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45d662cf-9b08-9117-d15d-d59d04470fe3",
  "kind": "theorem",
  "lexical_name": "shiftLeft_add_eq_shiftLeft_or",
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
  "slug": "shiftleft-add-eq-shiftleft-or--60c857a5a1b85a5069f6848a",
  "source": {
    "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2185,
    "line": 2153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60c857a5a1b85a5069f6848a36fa060fefdab0240181daca00ae3c19d44958d4",
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

Occurrence: `result:45d662cf-9b08-9117-d15d-d59d04470fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2153–2185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft_add_eq_shiftLeft_or {x y : BitVec w} :
    (y <<< x) + x =  (y <<< x) ||| x := by
  rw [BitVec.add_comm, add_shiftLeft_eq_or_shiftLeft, or_comm]

/- ### Fast Circuit For Unsigned Overflow Detection -/

/-!
# Note [Fast Unsigned Multiplication Overflow Detection]

The fast unsigned multiplication overflow detection circuit is described in
`Efficient integer multiplication overflow detection circuits` (https://ieeexplore.ieee.org/abstract/document/987767).
With this circuit, the computation of the overflow flag for the unsigned multiplication of
two bitvectors `x` and `y` with bitwidth `w` requires:
· extending the operands by `1` bit and performing the multiplication with the extended operands,
· computing the preliminary overflow flag, which describes whether `x` and `y` together have at most
  `w - 2` leading zeros.
If the most significant bit of the extended operands' multiplication is `true` or if the
preliminary overflow flag is `true`, overflow happens.
In particular, the conditions check two different cases:
· if the most significant bit of the extended operands' multiplication is `true`, the result of the
  multiplication 2 ^ w ≤ x.toNat * y.toNat < 2 ^ (w + 1),
· if the preliminary flag is true, then 2 ^ (w + 1) ≤ x.toNat * y.toNat.

The computation of the preliminary overflow flag `resRec` relies on two quantities:
· `uppcRec`: the unsigned parallel prefix circuit for the bits until a certain `i`,
· `aandRec`: the conjunction between the parallel prefix circuit at of the first operand until a certain `i`
  and the `i`-th bit in the second operand.
-/

/--
  `uppcRec` is the unsigned parallel prefix, `x.uppcRec s = true` iff `x.toNat` is greater or equal
  than `2 ^ (w - 1 - (s - 1))`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean#L2153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b69a68eefa1987f13d13b2f6ef1b1314e79981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
