# agmSequences_fst_lt_agm_of_pos_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:692c74b4-20ba-ba51-883c-4da8d407bf6a",
  "kind": "lemma",
  "lexical_name": "agmSequences_fst_lt_agm_of_pos_of_ne",
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
  "slug": "agmsequences-fst-lt-agm-of-pos-of-ne--0087c11e01855a638c870122",
  "source": {
    "blob": "c8a163119ef039c04c2a0321c1330ee2df20063d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0087c11e01855a638c870122f3076ce76d5ffa07c6cd56ad746f7e129ab1d9c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:692c74b4-20ba-ba51-883c-4da8d407bf6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma agmSequences_fst_lt_agm_of_pos_of_ne (hx : 0 < x) (hy : 0 < y) (hn : x ≠ y) (n : ℕ) :
    (agmSequences x y n).1 < agm x y := by
  rw [agm_eq_agm_agmSequences_fst_agmSequences_snd n]
  set p := (agmSequences x y n).1
  set q := (agmSequences x y n).2
  apply (?_ : p < sqrt (p * q)).trans_le (agmSequences_fst_le_agm 0)
  have ppos : 0 < p :=
    (show 0 < sqrt (x * y) by positivity).trans_le (agmSequences_fst_monotone zero_le)
  have plq : p < q := agmSequences_fst_lt_snd_of_ne hn ..
  nth_rw 1 [← mul_self_sqrt p, sqrt_mul]
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a163119ef039c04c2a0321c1330ee2df20063d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
