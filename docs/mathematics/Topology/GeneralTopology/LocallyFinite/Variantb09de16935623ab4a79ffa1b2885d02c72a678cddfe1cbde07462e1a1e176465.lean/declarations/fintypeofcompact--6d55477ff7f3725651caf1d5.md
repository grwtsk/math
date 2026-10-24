# fintypeOfCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:962ea8793e13098e3fa4c48a6ecfd82bae73a65081e285d16a12882c7b09b61d",
  "kind": "def",
  "lexical_name": "fintypeOfCompact",
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
  "slug": "fintypeofcompact--6d55477ff7f3725651caf1d5",
  "source": {
    "blob": "51f8d39e22c2b5b5b929065f6c203725fd4962f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d55477ff7f3725651caf1d5e3bdef4cd8bd5d43e767c982ae184aac57812056",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:962ea8793e13098e3fa4c48a6ecfd82bae73a65081e285d16a12882c7b09b61d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fintypeOfCompact [CompactSpace X] {f : ι → Set X}
    (hf : LocallyFinite f) (hne : ∀ i, (f i).Nonempty) : Fintype ι :=
  fintypeOfFiniteUniv (hf.finite_of_compact hne)

end LocallyFinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51f8d39e22c2b5b5b929065f6c203725fd4962f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
