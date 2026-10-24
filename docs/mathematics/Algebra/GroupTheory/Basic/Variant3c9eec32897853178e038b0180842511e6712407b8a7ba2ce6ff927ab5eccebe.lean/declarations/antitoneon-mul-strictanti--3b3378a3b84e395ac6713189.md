# AntitoneOn.mul_strictAnti'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e722d92759efb3e913231e31de2d2e8d8e3cd5b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6af40be0-1bf5-08fa-b229-3524e42fb0bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4e89d03-60ba-98d4-ee33-5566c313e8fe",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.mul_strictAnti'",
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
  "slug": "antitoneon-mul-strictanti--3b3378a3b84e395ac6713189",
  "source": {
    "blob": "e722d92759efb3e913231e31de2d2e8d8e3cd5b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1299,
    "line": 1289,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b3378a3b84e395ac671318968f8b90e192c568cb0e88645d2c9eb28e5a4ae08",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e89d03-60ba-98d4-ee33-5566c313e8fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1289–1299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.mul_strictAnti' [MulLeftStrictMono α]
    [MulRightMono α] {f g : β → α} (hf : AntitoneOn f s)
    (hg : StrictAntiOn g s) :
    StrictAntiOn (fun x => f x * g x) s :=
  fun _ hx _ hy h => mul_lt_mul_of_le_of_lt (hf hx hy h.le) (hg hx hy h)

variable [MulLeftMono α] [MulRightStrictMono α]

/-- The product of a strictly monotone function and a monotone function is strictly monotone. -/
@[to_additive add_monotone "The sum of a strictly monotone function and a monotone function is
strictly monotone."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean#L1289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e722d92759efb3e913231e31de2d2e8d8e3cd5b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
