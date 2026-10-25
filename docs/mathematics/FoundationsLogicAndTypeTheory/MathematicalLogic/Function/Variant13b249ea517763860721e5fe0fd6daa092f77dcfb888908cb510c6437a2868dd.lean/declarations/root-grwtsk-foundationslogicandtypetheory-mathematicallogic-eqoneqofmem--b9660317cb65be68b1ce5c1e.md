# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EqOnEqOfMem.Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.Function.leftInvOn_invFunOn_of_subset_image_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14d47cc0-f33b-afc2-6774-472fe9f61596",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EqOnEqOfMem.Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.Function.leftInvOn_invFunOn_of_subset_image_image",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-eqoneqofmem--b9660317cb65be68b1ce5c1e",
  "source": {
    "blob": "46e2a10e5d0830a596ce203c699da765e9d73425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 941,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9660317cb65be68b1ce5c1e512dbce1de0b6699fd5b6f7daad8b33fe50e9679",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14d47cc0-f33b-afc2-6774-472fe9f61596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 941–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EqOnEqOfMem.Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.Function.leftInvOn_invFunOn_of_subset_image_image [Nonempty α]
    (h : s ⊆ (invFunOn f s) '' (f '' s)) : LeftInvOn (invFunOn f s) f s :=
  fun x hx ↦ by
    obtain ⟨-, ⟨x, hx', rfl⟩, rfl⟩ := h hx
    rw [invFunOn_apply_eq (f := f) hx']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean#L941).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e2a10e5d0830a596ce203c699da765e9d73425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
