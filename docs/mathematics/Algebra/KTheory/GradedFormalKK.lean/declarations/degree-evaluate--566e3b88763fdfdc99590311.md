# degree_evaluate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1124cdb0f3009c8bdde62bf8eae9b82036dbe808",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/Algebra/KTheory/GradedFormalKK.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a02c187d-6de1-ad19-535d-77c06f78d2ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a062eff1-8cd6-e308-5c51-4121f3a63509",
  "kind": "theorem",
  "lexical_name": "degree_evaluate",
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
  "slug": "degree-evaluate--566e3b88763fdfdc99590311",
  "source": {
    "blob": "1124cdb0f3009c8bdde62bf8eae9b82036dbe808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 83,
    "path": "GRWTSK/Algebra/KTheory/GradedFormalKK.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:566e3b88763fdfdc9959031110be723167b13c439b1e21bf4bb7cabbb378ab0f",
  "verification": {
    "reference": "docs/verification/Algebra/KTheory/GradedFormalKK.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a062eff1-8cd6-e308-5c51-4121f3a63509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_evaluate {A B : Obj} (p : ProductPath T A B) :
    T.degree (evaluate p) = totalDegree p := by
  induction p with
  | nil A => exact T.identity_degree A
  | cons α rest ih =>
      calc
        T.degree (evaluate (.cons α rest)) =
            Bool.xor (T.degree α) (T.degree (evaluate rest)) :=
          T.product_degree α (evaluate rest)
        _ = Bool.xor (T.degree α) (totalDegree rest) := by rw [ih]
        _ = totalDegree (.cons α rest) := rfl

end ProductPath

namespace FunctionFixture

variable {Obj : Type u} (K : Obj → Type v)

/-- Ordinary functions with an explicit parity tag provide a complete graded fixture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KTheory/GradedFormalKK.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KTheory/GradedFormalKK.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1124cdb0f3009c8bdde62bf8eae9b82036dbe808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
