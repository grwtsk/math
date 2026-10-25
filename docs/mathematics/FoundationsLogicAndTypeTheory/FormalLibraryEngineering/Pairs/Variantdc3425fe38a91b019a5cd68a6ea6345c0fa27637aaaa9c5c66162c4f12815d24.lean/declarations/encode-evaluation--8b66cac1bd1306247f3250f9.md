# encode_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e44137b8-1220-195f-628f-6160bec2f494",
  "kind": "theorem",
  "lexical_name": "encode_evaluation",
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
  "slug": "encode-evaluation--8b66cac1bd1306247f3250f9",
  "source": {
    "blob": "10c722df62f941103d5a436cd3b191d4e89da4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 365,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b66cac1bd1306247f3250f9f51ac4a9d332761f0a7f99f78839b69af32f0923",
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

Occurrence: `result:e44137b8-1220-195f-628f-6160bec2f494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encode_evaluation {T p v : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (t : Fin 8) (hp : HasType P Γ p (U.apply T)) (mp : WellModed γ p .data)
    (hv : HasType P Γ v (R.big T)) (mv : WellModed γ v .data) :
    Equivalent P Γ γ (R.first.observe (R.big T) (R.encode U L.code t T p) v)
      (L.disj (L.conj
        ((R.tagBody L.code (queryBits 0) T).instantiate v)
        ((R.recoveryBody L.code 4 T (U.evalCallback T p)).instantiate v))
        ((R.tagBody L.code (queryBits (queryTag t)) T).instantiate v)) := by
  have he := h.first.cancellation (h.tower_sorted hT 4) (h.tower_mode mT 4)
    (h.encodeBody_family hU hT mT t hp mp) ⟨hv,mv⟩
  simpa only [DoubleCode.encode,DataWrapper.cancelFormula,ite_true,DoubleCode.encodeBody,
    Expr.instantiate,LogicCode.disj_subst,LogicCode.conj_subst,LogicCode.instantiate_raise,
    LogicSetup.code_disj,LogicSetup.code_conj,DoubleCode.big] using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variantdc3425fe38a91b019a5cd68a6ea6345c0fa27637aaaa9c5c66162c4f12815d24.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c722df62f941103d5a436cd3b191d4e89da4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
