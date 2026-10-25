# decode_encode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:608aa18e-fd1f-2c5a-945b-536c29b89288",
  "kind": "theorem",
  "lexical_name": "decode_encode",
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
  "slug": "decode-encode--379c3ef93119a3aa8403dba3",
  "source": {
    "blob": "68a5532e1851d12dbbb96c5a18bd9233e36cc67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 417,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:379c3ef93119a3aa8403dba35f3b06103bae0df5cd6bff235d0320755e179364",
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

Occurrence: `result:608aa18e-fd1f-2c5a-945b-536c29b89288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decode_encode {T p c : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (t : Fin 8) (hp : HasType P Γ p (U.apply T)) (mp : WellModed γ p .data)
    (hc : HasType P Γ c T) (mc : WellModed γ c .data) {s : S} (hs : HasType P Γ T (.sort s)) :
    Equivalent P Γ γ (U.observe T (R.decode U L.code T (R.encode U L.code t T p)) c)
      (U.observe T p c) := by
  have hd := h.encode_typed hU hT mT t hp mp
  have hQ := h.decoderBody_family hT mT hd.1 hd.2 hs
  have hdec := h.decode_typed hU hT mT hd.1 hd.2 hs
  have he := hU.cancellation hT mT hQ ⟨hc,mc⟩
  have he' : Equivalent P Γ γ (U.observe T (R.decode U L.code T (R.encode U L.code t T p)) c)
      (R.first.observe (R.big T) (R.encode U L.code t T p) (R.tagged L.code 0 T c)) := by
    simpa only [DataWrapper.cancelFormula,ite_true,DoubleCode.decoderBody_instantiate,
      DoubleCode.decode] using he
  have he₂ := h.encode_payload hU hT mT t hp mp hc mc
  have h₁ := (hU.sound hT mT).2 _ _ hdec.1 hdec.2 ⟨hc,mc⟩
  have h₂ := hQ.instantiate hc mc
  have h₃ := (hU.sound hT mT).2 _ _ hp mp ⟨hc,mc⟩
  obtain ⟨r,hr⟩ := L.triple.codomain.1
  exact he'.trans he₂ (h₁.1 r hr) (by
    simpa only [DoubleCode.decoderBody_instantiate] using h₂.1 r hr) (h₃.1 r hr)
end DoubleCode.Formed

namespace DoubleCode
variable (R : DoubleCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a5532e1851d12dbbb96c5a18bd9233e36cc67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
