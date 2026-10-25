# insertManyIfNewUnit_ind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b83eee1db77c29b4370b58f848ec79e7e165a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3094,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:675ed55e-8dee-b929-0ff9-6188008f1d07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d45fc18f-6734-cd17-465f-61820ca3ea9a",
  "kind": "theorem",
  "lexical_name": "insertManyIfNewUnit_ind",
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
  "slug": "insertmanyifnewunit-ind--eed3e6864c0957e44011d7d6",
  "source": {
    "blob": "ab3b83eee1db77c29b4370b58f848ec79e7e165a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3102,
    "line": 3094,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eed3e6864c0957e44011d7d6a3ddb171b8355b6be23893ac1d058fc47834eda4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d45fc18f-6734-cd17-465f-61820ca3ea9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3094–3102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertManyIfNewUnit_ind {motive : DHashMap α (fun _ => Unit) → Prop}
    (m : DHashMap α fun _ => Unit) (l : ρ)
    (init : motive m) (insert : ∀ m a, motive m → motive (m.insertIfNew a ())) :
    motive (insertManyIfNewUnit m l) :=
  (Raw₀.Const.insertManyIfNewUnit_ind ⟨m.1, _⟩ l ⟨m.2, init⟩
    (fun m a ⟨h, h'⟩ => ⟨h.insertIfNew₀, insert ⟨m, h⟩ a h'⟩) :
    ∃ h, motive ⟨(Raw₀.Const.insertManyIfNewUnit _ l).1, h⟩).2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean#L3094).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b83eee1db77c29b4370b58f848ec79e7e165a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
