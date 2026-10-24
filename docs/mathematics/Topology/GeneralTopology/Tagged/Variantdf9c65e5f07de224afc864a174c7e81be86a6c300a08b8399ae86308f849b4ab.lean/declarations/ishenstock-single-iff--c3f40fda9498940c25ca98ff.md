# isHenstock_single_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bbcace960582ec52e7a6c6ca542a72867708958",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6573809-1713-cd30-fa61-2f6d00cf4d06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8da7e59b-cf0f-37f9-4565-2c580dfddf8c",
  "kind": "theorem",
  "lexical_name": "isHenstock_single_iff",
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
  "slug": "ishenstock-single-iff--c3f40fda9498940c25ca98ff",
  "source": {
    "blob": "1bbcace960582ec52e7a6c6ca542a72867708958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 319,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3f40fda9498940c25ca98ff044c11368a93842069ccd8fd76b9d0db0b938d15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8da7e59b-cf0f-37f9-4565-2c580dfddf8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHenstock_single_iff (hJ : J ≤ I) (h : x ∈ Box.Icc I) :
    IsHenstock (single I J hJ x h) ↔ x ∈ Box.Icc J :=
  forall_mem_single (fun x J => x ∈ Box.Icc J) hJ h
set_option linter.uppercaseLean3 false in
#align box_integral.tagged_prepartition.is_Henstock_single_iff BoxIntegral.TaggedPrepartition.isHenstock_single_iff

--@[simp] -- Porting note: Commented out, because `simp only [isHenstock_single_iff]` simplifies it
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bbcace960582ec52e7a6c6ca542a72867708958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
