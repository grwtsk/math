# gates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:888c3389-a65a-a5a3-5cd3-8a8f9b18f2f0",
  "kind": "theorem",
  "lexical_name": "gates",
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
  "slug": "gates--7a67434d5e2dfcab480f145f",
  "source": {
    "blob": "43c4a4bb1826f14129576c945d1aa969da91a2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a67434d5e2dfcab480f145f16a5512ea1f9a54223882e9d32c3633b3173a258",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:888c3389-a65a-a5a3-5cd3-8a8f9b18f2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gates {T : ActiveType Ω C} {k l : Nat} {act act' : LambdaAction (hw := hw) Ω C hno T}
    (hr : ActionRelated Ω C hno T k l act act')
    {q q' : Expr S} (hq : q = q') {ex : Bool}
    {p p' : Option (RawValue (hw := hw) Ω C hno)}
    (h : Gate Ω C hno T q p ex) (h' : Gate Ω C hno T q' p' ex)
    (hb : Parameter.Bounded Ω C hno k p) (hb' : Parameter.Bounded Ω C hno k p')
    (he : Parameter.LevelEq Ω C hno l p p') :
    RawValue.LevelEq Ω C hno k (act h.frame p h.payload).val (act' h'.frame p' h'.payload).val := by
  have hf : h.frame = h'.frame := FrameKey.ext (h.argument.trans (hq.trans h'.argument.symm))
  have hp' : PayloadFits Ω C hno h.frame.domain p' := hf.symm ▸ h'.payload
  have hh := hr h.frame p p' h.payload hp' hb hb' he
  rw [LambdaAction.frame_congr act' hf p' hp' h'.payload] at hh
  exact hh
end ActionRelated

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c4a4bb1826f14129576c945d1aa969da91a2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
