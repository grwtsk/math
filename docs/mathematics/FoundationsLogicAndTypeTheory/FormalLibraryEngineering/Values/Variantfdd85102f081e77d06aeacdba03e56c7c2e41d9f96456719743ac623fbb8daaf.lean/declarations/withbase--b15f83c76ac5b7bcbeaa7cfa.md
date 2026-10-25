# withBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:923fcbdcbbb57bcb020f08b145b932e43d41126bac2c6f50099af5e6fe174cd3",
  "kind": "def",
  "lexical_name": "withBase",
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
  "slug": "withbase--b15f83c76ac5b7bcbeaa7cfa",
  "source": {
    "blob": "b79491536ecbeb8d18e8c0c024fd6a0735fd5a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b15f83c76ac5b7bcbeaa7cfaa77fbf15f7e000da7f7d93b74ef7358e3ad0f9d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:923fcbdcbbb57bcb020f08b145b932e43d41126bac2c6f50099af5e6fe174cd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def withBase (T : ActiveType Ω C) (b : Base Ω) : Value (hw := hw) Ω C hno T.type := by
  by_cases hp : PlainLayer P C (Ω.profile T.type)
  · let n : ActualPlain.Node Ω C := ⟨T.type, T.normal, T.sorted, hp⟩
    let e := ActualPlain.prefixEquiv (hw := hw) hno (Base Ω) n
    exact ⟨.plain ⟨n, e.symm (b, (e (plainDefault (hw := hw) Ω C hno n)).2)⟩, rfl⟩
  · by_cases hf : FreeLayer P C (Ω.profile T.type) false
    · exact ⟨.plus ⟨(fun s => if s = [] then b else topBase Ω), fun _ => none⟩, hf⟩
    · have hm : FreeLayer P C (Ω.profile T.type) true := by
        rcases T.active.classify with h | h | h
        · exact False.elim (hp h)
        · exact False.elim (hf h)
        · exact h
      exact ⟨.minus (FreeObservations.embed _ _ _ _ 1
        ⟨(fun s => if s = [] then b else topBase Ω), fun _ => none⟩), hm⟩

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79491536ecbeb8d18e8c0c024fd6a0735fd5a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
