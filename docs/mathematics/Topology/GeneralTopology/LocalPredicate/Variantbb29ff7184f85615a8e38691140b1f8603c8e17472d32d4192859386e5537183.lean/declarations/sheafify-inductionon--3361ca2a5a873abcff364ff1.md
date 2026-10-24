# sheafify_inductionOn₂'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1c752cc-8561-8485-edb8-e8f36fab7f22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6086e4f6-40be-514a-10d0-f5d4942abbad",
  "kind": "theorem",
  "lexical_name": "sheafify_inductionOn₂'",
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
  "slug": "sheafify-inductionon--3361ca2a5a873abcff364ff1",
  "source": {
    "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3361ca2a5a873abcff364ff105d1e6e2befea956eaed95c4d608436ef6095822",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6086e4f6-40be-514a-10d0-f5d4942abbad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sheafify_inductionOn₂' {X : TopCat} {T₁ T₂ T₃ : X → Type*}
    (P₁ : PrelocalPredicate T₁) (P₂ : PrelocalPredicate T₂) (P₃ : PrelocalPredicate T₃)
    (op : {x : X} → T₁ x → T₂ x → T₃ x)
    (hop : ∀ {U V : Opens X} {a : (x : U) → T₁ x} {b : (x : V) → T₂ x}, P₁.pred a → P₂.pred b →
      P₃.pred fun x : (U ⊓ V : Opens X) ↦ op (a ⟨x, x.2.1⟩) (b ⟨x, x.2.2⟩))
    {U : Opens X} {a : (x : U) → T₁ x} {b : (x : U) → T₂ x}
    (ha : P₁.sheafify.pred a) (hb : P₂.sheafify.pred b) :
    P₃.sheafify.pred (fun x : U ↦ op (a x) (b x)) :=
  P₁.sheafify_inductionOn₂ P₂ P₃ op
    (fun ha hb p ↦ ⟨_, Opens.infLELeft _ _, Opens.infLERight _ _, p.2, hop ha hb⟩) ha hb

end PrelocalPredicate

/-- The subpresheaf of dependent functions on `X` satisfying the "pre-local" predicate `P`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243541d6420c86b4346c81579a8f7eb0607c1cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
