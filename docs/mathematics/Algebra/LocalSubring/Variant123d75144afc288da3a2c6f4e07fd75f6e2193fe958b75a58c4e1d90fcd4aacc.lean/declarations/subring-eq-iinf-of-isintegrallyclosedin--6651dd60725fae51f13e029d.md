# Subring.eq_iInf_of_isIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8799df0564fc3ad2e388effbfe78be11707c5feb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cb43067-7e53-a931-307f-8be1908401b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61f6ad40-50b7-8e90-68f3-e8d231ba65ea",
  "kind": "lemma",
  "lexical_name": "Subring.eq_iInf_of_isIntegrallyClosedIn",
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
  "slug": "subring-eq-iinf-of-isintegrallyclosedin--6651dd60725fae51f13e029d",
  "source": {
    "blob": "8799df0564fc3ad2e388effbfe78be11707c5feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 199,
    "path": "GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6651dd60725fae51f13e029d496a9e1e1727d35af9e613e02c7c58f009e65391",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f6ad40-50b7-8e90-68f3-e8d231ba65ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subring.eq_iInf_of_isIntegrallyClosedIn {R : Subring K} [IsIntegrallyClosedIn R K] :
    R = ⨅ V : {V : ValuationSubring K // R ≤ V.toSubring}, V.1.toSubring :=
  le_antisymm (le_iInf fun V ↦ V.2) fun _ h ↦ of_not_not fun hxR ↦
    have ⟨V, hV⟩ := R.exists_le_valuationSubring_of_isIntegrallyClosedIn hxR
    hV.2 (iInf_le_of_le (α := Subring K) ⟨V, hV.1⟩ le_rfl h)

/-- A local subring integrally closed in a field is the intersection of valuation subrings
dominating it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8799df0564fc3ad2e388effbfe78be11707c5feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
