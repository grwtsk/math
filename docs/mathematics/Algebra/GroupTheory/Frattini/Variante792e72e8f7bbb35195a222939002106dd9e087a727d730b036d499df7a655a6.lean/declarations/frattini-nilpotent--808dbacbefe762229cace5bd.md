# frattini_nilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab94bb144f0716194b0e78e465debfdb755a9a95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57cc403d-18bb-9a42-f012-ad9e7a121871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7563307-16f1-4fec-941f-7e2aa06d5fcc",
  "kind": "theorem",
  "lexical_name": "frattini_nilpotent",
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
  "slug": "frattini-nilpotent--808dbacbefe762229cace5bd",
  "source": {
    "blob": "ab94bb144f0716194b0e78e465debfdb755a9a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808dbacbefe762229cace5bdb2bf837214c9e6d28d40dee262e333b5ea6b867d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7563307-16f1-4fec-941f-7e2aa06d5fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frattini_nilpotent [Finite G] : Group.IsNilpotent (frattini G) := by
  -- We use the characterisation of nilpotency in terms of all Sylow subgroups being normal.
  have q := (isNilpotent_of_finite_tfae (G := frattini G)).out 0 3
  rw [q]; clear q
  -- Consider each prime `p` and Sylow `p`-subgroup `P` of `frattini G`.
  intro p p_prime P
  -- The Frattini argument shows that the normalizer of `P` in `G`
  -- together with `frattini G` generates `G`.
  have frattini_argument := Sylow.normalizer_sup_eq_top P
  -- and hence by the nongenerating property of the Frattini subgroup that
  -- the normalizer of `P` in `G` is `G`.
  have normalizer_P := frattini_nongenerating frattini_argument
  -- This means that `P` is normal as a subgroup of `G`
  have P_normal_in_G : (map (frattini G).subtype P).Normal := normalizer_eq_top_iff.mp normalizer_P
  -- and hence also as a subgroup of `frattini G`, which was the remaining goal.
  exact P_normal_in_G.of_map_subtype
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab94bb144f0716194b0e78e465debfdb755a9a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
