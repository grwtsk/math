# eq_addChar_of_value_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba46b13f35477af2b2edf406d918b152b89b0bc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b97a117-98d2-c34f-6ee0-599055abcbf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7202eed3-94f1-6436-7200-da8eb82c5d29",
  "kind": "lemma",
  "lexical_name": "eq_addChar_of_value_at_one",
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
  "slug": "eq-addchar-of-value-at-one--75145425ddf75affc9e99e4a",
  "source": {
    "blob": "ba46b13f35477af2b2edf406d918b152b89b0bc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75145425ddf75affc9e99e4a331e371a340006b4dd948182e8b32b4355415a7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7202eed3-94f1-6436-7200-da8eb82c5d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_addChar_of_value_at_one {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0))
    {κ : AddChar ℤ_[p] R} (hκ : Continuous κ) (hκ' : κ 1 = 1 + r) :
    κ = addChar_of_value_at_one r hr :=
  denseRange_natCast.addChar_eq_of_eval_one_eq hκ (by fun_prop) (by simp [hκ'])

variable (p R) in
/-- Equivalence between continuous additive characters `ℤ_[p] → R`, and `r ∈ R` with `r ^ n → 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba46b13f35477af2b2edf406d918b152b89b0bc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
