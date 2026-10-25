# realize_equivSentence_symm_con

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a059889a228ea4409cb604b1fb01a98f3045cd90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 614,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25dfe278-da67-29f9-a610-5a6ece6fe8c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cdddde9-3628-bcd6-7a4a-0e05ddb5ae19",
  "kind": "theorem",
  "lexical_name": "realize_equivSentence_symm_con",
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
  "slug": "realize-equivsentence-symm-con--65962c189dc4a1be253f7224",
  "source": {
    "blob": "a059889a228ea4409cb604b1fb01a98f3045cd90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 614,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65962c189dc4a1be253f7224975027ab4b30c59b7d3ae72977752f7f2035a1e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cdddde9-3628-bcd6-7a4a-0e05ddb5ae19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_equivSentence_symm_con [L[[α]].Structure M]
    [(L.lhomWithConstants α).IsExpansionOn M] (φ : L[[α]].Sentence) :
    ((equivSentence.symm φ).Realize fun a => (L.con a : M)) ↔ φ.Realize M := by
  simp only [equivSentence, _root_.Equiv.symm_symm, Equiv.coe_trans, Realize,
    BoundedFormula.realize_relabelEquiv, Function.comp]
  refine _root_.trans ?_ BoundedFormula.realize_constantsVarsEquiv
  rw [iff_iff_eq]
  congr with (_ | a)
  · simp
  · cases a

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059889a228ea4409cb604b1fb01a98f3045cd90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
