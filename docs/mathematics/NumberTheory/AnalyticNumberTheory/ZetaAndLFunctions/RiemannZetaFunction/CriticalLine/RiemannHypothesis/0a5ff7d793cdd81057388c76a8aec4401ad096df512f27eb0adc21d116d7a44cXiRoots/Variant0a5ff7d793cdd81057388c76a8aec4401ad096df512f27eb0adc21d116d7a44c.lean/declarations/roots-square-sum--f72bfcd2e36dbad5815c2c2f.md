# roots_square_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "487c61fb096dea28af396fec804ac2d0ed675b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:139e29c4-0875-0c93-3f9b-469fb53c2afd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77f4bafc-44ba-d5cb-f954-bc0234b936e3",
  "kind": "lemma",
  "lexical_name": "roots_square_sum",
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
  "slug": "roots-square-sum--f72bfcd2e36dbad5815c2c2f",
  "source": {
    "blob": "487c61fb096dea28af396fec804ac2d0ed675b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f72bfcd2e36dbad5815c2c2f7e05fde78c2cd5bcc4bffd79474b2071a6f6ae8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f4bafc-44ba-d5cb-f954-bc0234b936e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma roots_square_sum (s : Multiset ℂ) :
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rw [Multiset.map_cons, Multiset.sum_cons, ih,
      esymm_cons_succ s x 0, esymm_cons_succ s x 1]
    have h0 : s.esymm 0 = 1 := by simp [Multiset.esymm]
    rw [h0]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `487c61fb096dea28af396fec804ac2d0ed675b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
