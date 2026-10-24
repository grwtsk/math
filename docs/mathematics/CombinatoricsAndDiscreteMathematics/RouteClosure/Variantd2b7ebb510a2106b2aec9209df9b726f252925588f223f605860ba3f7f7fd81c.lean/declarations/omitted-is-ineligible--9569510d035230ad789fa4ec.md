# omitted_is_ineligible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a985142-f3db-a3b0-6446-28a984ba3a5c",
  "kind": "theorem",
  "lexical_name": "omitted_is_ineligible",
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
  "slug": "omitted-is-ineligible--9569510d035230ad789fa4ec",
  "source": {
    "blob": "78e73afd0135c4dddfefcd90e5a88be2abb5c4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9569510d035230ad789fa4ecc3b2c594d5555e1fd1069c1c863aee0e208ebd5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a985142-f3db-a3b0-6446-28a984ba3a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omitted_is_ineligible
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate}
    (omitted : candidate ∉ closure.eligibleUniverse) :
    ¬ Eligible candidate := by
  intro eligible
  exact omitted (closure.eligible_complete eligible)

end ExactFiniteRouteClosure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e73afd0135c4dddfefcd90e5a88be2abb5c4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
