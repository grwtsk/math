# ofNat'_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23a61b84-462f-f299-fe3b-851e976aa127",
  "kind": "theorem",
  "lexical_name": "ofNat'_succ",
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
  "slug": "ofnat-succ--3cc42d539a36eba33e2d16a0",
  "source": {
    "blob": "9f5862721c556b1ec41a47035ec71c76c89da7f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantbb8667993d990cb1dac8137f5f32a6054eb1b68dbaf44040c63fc2c06699c0f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cc42d539a36eba33e2d16a08cfb9cbefeb47afc315304b2a0cf10a6d3e381fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variantbb8667993d990cb1dac8137f5f32a6054eb1b68dbaf44040c63fc2c06699c0f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23a61b84-462f-f299-fe3b-851e976aa127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat'_succ : ∀ {n}, ofNat' (n + 1) = ofNat' n + 1 :=
  @(Nat.binaryRec (by simp [zero_add]) fun b n ih => by
    cases b
    · erw [ofNat'_bit true n, ofNat'_bit]
      simp only [← bit1_of_bit1, ← bit0_of_bit0, cond]
    · rw [show n.bit true + 1 = (n + 1).bit false by simp [Nat.bit, mul_add],
        ofNat'_bit, ofNat'_bit, ih]
      simp only [cond, add_one, bit1_succ])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variantbb8667993d990cb1dac8137f5f32a6054eb1b68dbaf44040c63fc2c06699c0f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantbb8667993d990cb1dac8137f5f32a6054eb1b68dbaf44040c63fc2c06699c0f1.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5862721c556b1ec41a47035ec71c76c89da7f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
