# lifted_agreement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62aab2a7-ef14-2e65-1bce-185a2efaf3ce",
  "kind": "theorem",
  "lexical_name": "lifted_agreement",
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
  "slug": "lifted-agreement--f10925c002fcc94f6686e64f",
  "source": {
    "blob": "8f8f768bad2ef62bfedba9a39d366ed33279cc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f10925c002fcc94f6686e64f23cb07230d5355a929763afb48aed603724cde99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62aab2a7-ef14-2e65-1bce-185a2efaf3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lifted_agreement (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references) :
    AgreesOnReferences (beforePacked beforeRows).dictionary
      ((inventory afterRows).map (fun initial => (afterRoot, initial)))
      (beforePacked beforeRows).references := by
  intro reference hreference
  simp only [beforePacked, liftPacked, PrefixInventory.packed, List.getElem?_map]
  cases hroot
  rw [hagreement reference hreference]

/-- Actual dictionary replacement and actual unpacking recover exactly the old rooted trace rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8f768bad2ef62bfedba9a39d366ed33279cc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
