# point_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e0c015c-fc20-6152-02e0-a82fab3e4140",
  "kind": "theorem",
  "lexical_name": "point_evaluation",
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
  "slug": "point-evaluation--a6df513eceeba097e62eb5d7",
  "source": {
    "blob": "10c722df62f941103d5a436cd3b191d4e89da4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 659,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6df513eceeba097e62eb5d7bdad59de632c2bda3f26038ee2e1be3ae3b97cb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e0c015c-fc20-6152-02e0-a82fab3e4140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_evaluation {T c₀ c bp : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (h₀ : HasType P Γ c₀ T) (m₀ : WellModed γ c₀ .data)
    (hc : HasType P Γ c T) (mc : WellModed γ c .data)
    {s r : S} (hs : HasType P Γ T (.sort s)) (hr : HasType P Γ (R.bpType T) (.sort r))
    (hb : HasType P Γ bp (R.bpType T)) (mb : WellModed γ bp .data) :
    Equivalent P Γ γ (R.second.observe (R.bpType T) (R.point U L.code T c₀ c) bp)
      (L.conj (R.mark L.code 7 T c₀ bp) (U.observe T (R.decode U L.code T bp) c)) := by
  have hh := h.second.cancellation (h.bp_sorted hT) (h.bp_mode mT)
    (h.pointBody_family hU hT mT h₀ m₀ hc mc hs hr) ⟨hb,mb⟩
  simpa only [DataWrapper.cancelFormula,ite_true,DoubleCode.pointBody_instantiate,
    DoubleCode.point,LogicSetup.code_conj] using hh
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c722df62f941103d5a436cd3b191d4e89da4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
