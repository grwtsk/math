# notMem_support_takeUntil_support_takeUntil_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ccd537-466b-3300-77e4-a2e79ef8531a",
  "kind": "lemma",
  "lexical_name": "notMem_support_takeUntil_support_takeUntil_subset",
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
  "slug": "notmem-support-takeuntil-support-takeuntil-subset--ef9fee3491c170429179d68a",
  "source": {
    "blob": "702cf54255d4b8cba12c1806d8f4e0269761e8d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef9fee3491c170429179d68a9af1df3622067d8f91cba86fcd9e5653cf6909df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ccd537-466b-3300-77e4-a2e79ef8531a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma notMem_support_takeUntil_support_takeUntil_subset {p : G.Walk u v} {w x : V} (h : x ≠ w)
    (hw : w ∈ p.support) (hx : x ∈ (p.takeUntil w hw).support) :
    w ∉ (p.takeUntil x (p.support_takeUntil_subset hw hx)).support := by
  rw [← takeUntil_takeUntil p hw hx]
  intro hw'
  have h1 : (((p.takeUntil w hw).takeUntil x hx).takeUntil w hw').length
      < ((p.takeUntil w hw).takeUntil x hx).length := by
    exact length_takeUntil_lt _ h.symm
  have h2 : ((p.takeUntil w hw).takeUntil x hx).length < (p.takeUntil w hw).length := by
    exact length_takeUntil_lt _ h
  simp only [takeUntil_takeUntil] at h1 h2
  omega

@[deprecated (since := "2025-05-23")]
alias not_mem_support_takeUntil_support_takeUntil_subset :=
  notMem_support_takeUntil_support_takeUntil_subset

/-- Rotate a loop walk such that it is centered at the given vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702cf54255d4b8cba12c1806d8f4e0269761e8d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
