# basisSets_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bea0fab6-6288-fdd5-689b-52bd2a7e17cc",
  "kind": "theorem",
  "lexical_name": "basisSets_neg",
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
  "slug": "basissets-neg--89cce1a35915114d05f686f3",
  "source": {
    "blob": "7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89cce1a35915114d05f686f3a9a43089574ca2a7b11d19ba97006e5ce454e91d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bea0fab6-6288-fdd5-689b-52bd2a7e17cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basisSets_neg (U) (hU' : U ∈ p.basisSets) :
    ∃ V ∈ p.basisSets, V ⊆ (fun x : E => -x) ⁻¹' U := by
  rcases p.basisSets_iff.mp hU' with ⟨s, r, _, hU⟩
  rw [hU, neg_preimage, neg_ball (s.sup p), neg_zero]
  exact ⟨U, hU', Eq.subset hU⟩

/-- The `addGroupFilterBasis` induced by the filter basis `Seminorm.basisSets`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
