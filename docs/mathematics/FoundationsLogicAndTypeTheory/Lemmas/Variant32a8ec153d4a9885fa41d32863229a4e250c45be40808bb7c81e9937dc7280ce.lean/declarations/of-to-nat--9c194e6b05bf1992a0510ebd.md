# of_to_nat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b5540799b5c985939bb255534134994ef264ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c5248b7-53de-146b-3d7a-89c36046f762",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abdeaa36-f57f-c976-dae8-3576bd3b3fc2",
  "kind": "theorem",
  "lexical_name": "of_to_nat'",
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
  "slug": "of-to-nat--9c194e6b05bf1992a0510ebd",
  "source": {
    "blob": "d7b5540799b5c985939bb255534134994ef264ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 301,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c194e6b05bf1992a0510ebdccb6a9763d0a95762068ad603e9fe8ebb63a295f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abdeaa36-f57f-c976-dae8-3576bd3b3fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_to_nat' : ∀ n : PosNum, Num.ofNat' (n : ℕ) = Num.pos n
  | 1 => by
      simp only [cast_one, Num.ofNat'_one]
      norm_cast
  | bit0 p => by
      simpa only [Nat.bit_false, cond_false, two_mul, of_to_nat' p] using Num.ofNat'_bit false p
  | bit1 p => by
      simpa only [Nat.bit_true, cond_true, two_mul, of_to_nat' p] using Num.ofNat'_bit true p

end PosNum

namespace Num

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b5540799b5c985939bb255534134994ef264ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
