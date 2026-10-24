# iUnion_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa8eae0f-8ebb-0453-b0b4-251d3f98628d",
  "kind": "theorem",
  "lexical_name": "iUnion_single",
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
  "slug": "iunion-single--ed7374d74c67983a7ad513c0",
  "source": {
    "blob": "8e79d4035730d837a1e32ff22f53eed4727d753e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed7374d74c67983a7ad513c035b97e03946d88a191b1599a25d2489f140d8ac0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa8eae0f-8ebb-0453-b0b4-251d3f98628d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_single (hJ : J ≤ I) (h : x ∈ Box.Icc I) : (single I J hJ x h).iUnion = J :=
  Prepartition.iUnion_single hJ
#align box_integral.tagged_prepartition.Union_single BoxIntegral.TaggedPrepartition.iUnion_single

/-- Union of two tagged prepartitions with disjoint unions of boxes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e79d4035730d837a1e32ff22f53eed4727d753e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
