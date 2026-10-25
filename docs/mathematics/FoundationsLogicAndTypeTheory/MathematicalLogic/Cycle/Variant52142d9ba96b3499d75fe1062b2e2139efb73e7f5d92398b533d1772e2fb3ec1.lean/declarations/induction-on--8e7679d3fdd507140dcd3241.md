# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9730cc04-13a9-e8c4-9e44-39658a705f1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5b4926d-235e-f0ba-8678-44559db64c1a",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--8e7679d3fdd507140dcd3241",
  "source": {
    "blob": "91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 454,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7679d3fdd507140dcd3241e87c186c1f856afd0d334b96aaf304a3160512a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5b4926d-235e-f0ba-8678-44559db64c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on {C : Cycle α → Prop} (s : Cycle α) (H0 : C nil)
    (HI : ∀ (a) (l : List α), C ↑l → C ↑(a :: l)) : C s :=
  Quotient.inductionOn' s fun l => by
    refine List.recOn l ?_ ?_ <;> simp only [mk''_eq_coe, coe_nil]
    assumption'

/-- For `x : α`, `s : Cycle α`, `x ∈ s` indicates that `x` occurs at least once in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
