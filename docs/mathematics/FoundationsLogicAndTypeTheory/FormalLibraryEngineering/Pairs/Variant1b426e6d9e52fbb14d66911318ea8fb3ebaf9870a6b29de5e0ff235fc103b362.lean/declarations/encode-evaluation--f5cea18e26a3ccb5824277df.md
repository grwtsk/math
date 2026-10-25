# encode_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05540a1d-5dc1-0e1a-3e24-d1a60f3c3410",
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
  "slug": "encode-evaluation--f5cea18e26a3ccb5824277df",
  "source": {
    "blob": "68a5532e1851d12dbbb96c5a18bd9233e36cc67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5cea18e26a3ccb5824277df3b2259080ca8d2a3409908b0593de91a5aacd11f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05540a1d-5dc1-0e1a-3e24-d1a60f3c3410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–363.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a5532e1851d12dbbb96c5a18bd9233e36cc67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
