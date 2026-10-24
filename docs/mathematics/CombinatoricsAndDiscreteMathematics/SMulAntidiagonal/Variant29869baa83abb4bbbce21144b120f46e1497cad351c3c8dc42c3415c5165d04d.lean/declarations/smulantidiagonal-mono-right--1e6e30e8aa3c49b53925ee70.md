# smulAntidiagonal_mono_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "924fe242cce0f2375a5431739c0a51d5910d7020",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:823004c5-4b06-06a4-e2ac-402b0aac2b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbffc597-b74a-77fc-c555-8528afb200c9",
  "kind": "theorem",
  "lexical_name": "smulAntidiagonal_mono_right",
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
  "slug": "smulantidiagonal-mono-right--1e6e30e8aa3c49b53925ee70",
  "source": {
    "blob": "924fe242cce0f2375a5431739c0a51d5910d7020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6e30e8aa3c49b53925ee70e66f7ae4fbf0e8ae4fe49094a154b25209ab9d13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbffc597-b74a-77fc-c555-8528afb200c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smulAntidiagonal_mono_right {a : P} {hs : s.IsPWO} {ht : t.IsPWO} (h : v ⊆ t) :
    SMulAntidiagonal hs hv a ⊆ SMulAntidiagonal hs ht a :=
  Set.Finite.toFinset_mono <| Set.smulAntidiagonal_mono_right h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924fe242cce0f2375a5431739c0a51d5910d7020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
