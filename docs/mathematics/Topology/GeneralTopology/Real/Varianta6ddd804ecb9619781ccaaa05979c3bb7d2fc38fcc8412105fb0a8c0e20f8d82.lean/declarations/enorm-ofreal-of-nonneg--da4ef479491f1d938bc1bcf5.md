# enorm_ofReal_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "846349e4b2bc8a60dbec1837a691e03f264b6ae2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32868391-0732-470d-0a06-fb073cc3e28b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64c84784-4f13-51f2-87a2-58c781caf2de",
  "kind": "lemma",
  "lexical_name": "enorm_ofReal_of_nonneg",
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
  "slug": "enorm-ofreal-of-nonneg--da4ef479491f1d938bc1bcf5",
  "source": {
    "blob": "846349e4b2bc8a60dbec1837a691e03f264b6ae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4ef479491f1d938bc1bcf51bdd32e9a642c1f5fd4efe90f2ff5f0af8d246ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64c84784-4f13-51f2-87a2-58c781caf2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma enorm_ofReal_of_nonneg {a : ℝ} (ha : 0 ≤ a) : ‖ENNReal.ofReal a‖ₑ = ‖a‖ₑ := by
  simp [Real.enorm_of_nonneg, ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Varianta6ddd804ecb9619781ccaaa05979c3bb7d2fc38fcc8412105fb0a8c0e20f8d82.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846349e4b2bc8a60dbec1837a691e03f264b6ae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
