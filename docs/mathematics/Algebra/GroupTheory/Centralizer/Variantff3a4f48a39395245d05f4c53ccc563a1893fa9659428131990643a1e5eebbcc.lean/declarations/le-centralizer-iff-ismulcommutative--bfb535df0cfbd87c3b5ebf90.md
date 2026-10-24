# le_centralizer_iff_isMulCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5618839bffb542c8fb1c2491a0fccd44f26b949e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d2da82e-9a2e-0810-0660-6ea09498cf61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e39f13b2-7c95-e11b-5071-fe17841edab4",
  "kind": "theorem",
  "lexical_name": "le_centralizer_iff_isMulCommutative",
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
  "slug": "le-centralizer-iff-ismulcommutative--bfb535df0cfbd87c3b5ebf90",
  "source": {
    "blob": "5618839bffb542c8fb1c2491a0fccd44f26b949e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfb535df0cfbd87c3b5ebf909cf6300b3ebcccff8c63aa35615ff5fa29844071",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39f13b2-7c95-e11b-5071-fe17841edab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_centralizer_iff_isMulCommutative : K ≤ centralizer K ↔ IsMulCommutative K :=
  ⟨fun h => ⟨⟨fun x y => Subtype.ext (h y.2 x x.2)⟩⟩,
    fun h x hx y hy => congr_arg Subtype.val (h.1.1 ⟨y, hy⟩ ⟨x, hx⟩)⟩

@[deprecated (since := "2025-04-09")] alias le_centralizer_iff_isCommutative :=
  le_centralizer_iff_isMulCommutative
@[deprecated (since := "2025-04-09")] alias _root_.AddSubgroup.le_centralizer_iff_isCommutative :=
  AddSubgroup.le_centralizer_iff_isAddCommutative

variable (H)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5618839bffb542c8fb1c2491a0fccd44f26b949e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
