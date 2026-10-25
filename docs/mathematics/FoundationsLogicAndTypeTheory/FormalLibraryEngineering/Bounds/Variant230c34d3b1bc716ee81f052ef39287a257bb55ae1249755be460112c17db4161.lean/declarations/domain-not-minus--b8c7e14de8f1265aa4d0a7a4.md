# domain_not_minus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6473598-c6bd-4f67-fce0-a2fcfba60570",
  "kind": "theorem",
  "lexical_name": "domain_not_minus",
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
  "slug": "domain-not-minus--b8c7e14de8f1265aa4d0a7a4",
  "source": {
    "blob": "43c4a4bb1826f14129576c945d1aa969da91a2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 722,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8c7e14de8f1265aa4d0a7a40f23a6e7d66584dccf92da084765137ccf345bd2",
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

Occurrence: `result:c6473598-c6bd-4f67-fce0-a2fcfba60570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_not_minus (t : ProductInstance (hw := hw) Ω C hno)
    (hC : IsComponent (PrimaryEdge P) C) {n : Expr S} (hn : Ω.HasType n t.domainNF)
    (hK : Ω.profile (.pi t.domainNF t.bodyNF) ∈ C) (hL : Ω.profile (t.targetNF n) ∈ C) :
    ¬ FreeLayer P C (Ω.profile t.domainNF) true := by
  intro hm
  obtain ⟨J,hf,hp⟩ := Ω.frame_profiles hw t.product_typed hn
  have hL' : Ω.profile (t.bodyNF.instantiate n) ∈ C := by
    rw [t.target_eq hn,ContextTower.profile_normalForm] at hL
    exact hL
  have hJ := hC.between hL' hK hp.reach (.single (.codomain hf))
  exact Bool.noConfusion (hm.direct_sign ⟨hm.active.layer,J,hJ,_,hK,hf⟩)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c4a4bb1826f14129576c945d1aa969da91a2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
