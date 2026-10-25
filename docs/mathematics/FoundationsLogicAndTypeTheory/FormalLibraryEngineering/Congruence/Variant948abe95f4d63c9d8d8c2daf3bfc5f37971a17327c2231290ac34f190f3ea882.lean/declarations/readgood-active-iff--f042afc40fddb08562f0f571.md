# readGood_active_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a5e2a2c-1168-7763-dcaa-eeb502e23231",
  "kind": "theorem",
  "lexical_name": "readGood_active_iff",
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
  "slug": "readgood-active-iff--f042afc40fddb08562f0f571",
  "source": {
    "blob": "fc8b46f226b462286f2b1ca9f76a4d37bb84c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1324,
    "line": 1308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f042afc40fddb08562f0f5716fed6e743d6af45506dec95c3959cec1676fe0e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a5e2a2c-1168-7763-dcaa-eeb502e23231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1308–1324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readGood_active_iff {Γ : List (Expr S)} {M : Expr S} {s : S}
    (t : TypingTree P Γ M (.sort s)) {σ : Nat → Expr S}
    (hm : Ω.profile (M.subst σ) ∈ C) (hs : ({s} : Set S) ∈ C)
    (ha : ActiveLayer P C (Ω.profile (Expr.sort s |>.subst σ))) :
    ReadGood Ω C t σ ↔ ValGood Ω C t σ := by
  cases t with
  | var ht hd hc => exact baseGood_active_iff Ω C hm hs ha
  | sort ht hax hc => exact Iff.rfl
  | product ht d b hr hc =>
      dsimp only [ReadGood,ValGood,goodness]
      have hc' := hc.sort_inj
      simp only [← hc',hm,hs,true_and,true_implies]
  | abstraction ht d b hp hc => exact baseGood_active_iff Ω C hm hs ha
  | application ht f a hc => exact baseGood_active_iff Ω C hm hs ha
end PureTypeSystem.ObservationValues

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean#L1308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8b46f226b462286f2b1ca9f76a4d37bb84c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
