# edist_le_edist_pi_of_edist_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 819,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e9bfe12-8c96-576b-197f-e7c7699c0511",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939c4b46-3741-42cf-bbdd-51ff05846339",
  "kind": "lemma",
  "lexical_name": "edist_le_edist_pi_of_edist_lt",
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
  "slug": "edist-le-edist-pi-of-edist-lt--359af400670795ef66fe7791",
  "source": {
    "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 835,
    "line": 819,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359af400670795ef66fe7791523146617f3498d154860355fa451e7fae5337e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939c4b46-3741-42cf-bbdd-51ff05846339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 819–835.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edist_le_edist_pi_of_edist_lt (h : edist x y < 2⁻¹ ^ encode i) :
    edist (x i) (y i) ≤ edist x y := by
  simpa only [not_le.2 h, false_or] using min_le_iff.1 (min_edist_le_edist_pi x y i)

end EDist

attribute [scoped instance] PiCountable.edist

section PseudoEMetricSpace
variable [∀ i, PseudoEMetricSpace (F i)]

/-- Given a countable family of extended pseudometric spaces,
one may put an extended distance on their product `Π i, E i`.

It is highly non-canonical, though, and therefore not registered as a global instance.
The distance we use here is `edist x y = ∑' i, min (1/2)^(encode i) (edist (x i) (y i))`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean#L819).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9037e11c4d4eeb6bcd61b008be2f6f95426d2181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
