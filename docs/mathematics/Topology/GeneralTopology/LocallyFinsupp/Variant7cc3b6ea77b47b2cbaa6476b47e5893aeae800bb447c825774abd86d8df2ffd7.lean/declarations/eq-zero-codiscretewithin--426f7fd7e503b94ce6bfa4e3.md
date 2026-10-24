# eq_zero_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "974235a538e4173ae0b41ea303119de62b6cb342",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a125ce73-946f-6653-482b-d858e7bc9d8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0389cc4-a37a-060a-8555-f35a6bf7a38d",
  "kind": "theorem",
  "lexical_name": "eq_zero_codiscreteWithin",
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
  "slug": "eq-zero-codiscretewithin--426f7fd7e503b94ce6bfa4e3",
  "source": {
    "blob": "974235a538e4173ae0b41ea303119de62b6cb342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:426f7fd7e503b94ce6bfa4e3a0a2a6a2e62598159ad89d1d89c997c30d6a4858",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0389cc4-a37a-060a-8555-f35a6bf7a38d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_codiscreteWithin [Zero Y] [T1Space X] (D : locallyFinsuppWithin U Y) :
    D =ᶠ[Filter.codiscreteWithin U] 0 := by
  apply codiscreteWithin_iff_locallyFiniteComplementWithin.2
  have : D.support = (U \ {x | D x = (0 : X → Y) x}) := by
    ext x
    simp only [mem_support, ne_eq, Pi.zero_apply, Set.mem_diff, Set.mem_setOf_eq, iff_and_self]
    exact (support_subset_iff.1 D.supportWithinDomain) x
  rw [← this]
  exact D.supportLocallyFiniteWithinDomain

/--
On a T1 space, the support of a functions with locally finite support within `U` is discrete.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974235a538e4173ae0b41ea303119de62b6cb342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
