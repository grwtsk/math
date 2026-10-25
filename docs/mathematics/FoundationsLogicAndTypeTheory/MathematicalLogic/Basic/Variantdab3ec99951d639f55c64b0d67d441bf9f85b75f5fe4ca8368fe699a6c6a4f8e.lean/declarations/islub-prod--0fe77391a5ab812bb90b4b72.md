# isLUB_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf75deb4-f1ac-ac0a-7cbb-591309da634c",
  "kind": "theorem",
  "lexical_name": "isLUB_prod",
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
  "slug": "islub-prod--0fe77391a5ab812bb90b4b72",
  "source": {
    "blob": "0cfee0812aeaf4064b64566f52f540f497021241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1640,
    "line": 1624,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe77391a5ab812bb90b4b72259ed7ca1fd132f43c67ce4aa700ac409a1c2e08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf75deb4-f1ac-ac0a-7cbb-591309da634c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1624–1640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLUB_prod [Preorder α] [Preorder β] {s : Set (α × β)} (p : α × β) :
    IsLUB s p ↔ IsLUB (Prod.fst '' s) p.1 ∧ IsLUB (Prod.snd '' s) p.2 := by
  refine'
    ⟨fun H =>
      ⟨⟨monotone_fst.mem_upperBounds_image H.1, fun a ha => _⟩,
        ⟨monotone_snd.mem_upperBounds_image H.1, fun a ha => _⟩⟩,
      fun H => ⟨_, _⟩⟩
  · suffices h : (a, p.2) ∈ upperBounds s from (H.2 h).1
    exact fun q hq => ⟨ha <| mem_image_of_mem _ hq, (H.1 hq).2⟩
  · suffices h : (p.1, a) ∈ upperBounds s from (H.2 h).2
    exact fun q hq => ⟨(H.1 hq).1, ha <| mem_image_of_mem _ hq⟩
  · exact fun q hq => ⟨H.1.1 <| mem_image_of_mem _ hq, H.2.1 <| mem_image_of_mem _ hq⟩
  · exact fun q hq =>
      ⟨H.1.2 <| monotone_fst.mem_upperBounds_image hq,
        H.2.2 <| monotone_snd.mem_upperBounds_image hq⟩
#align is_lub_prod isLUB_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean#L1624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cfee0812aeaf4064b64566f52f540f497021241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
