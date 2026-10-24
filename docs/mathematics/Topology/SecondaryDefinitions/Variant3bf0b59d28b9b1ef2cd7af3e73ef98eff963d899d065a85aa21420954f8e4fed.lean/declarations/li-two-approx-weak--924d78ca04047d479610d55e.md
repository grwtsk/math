# li.two_approx_weak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b7c25d8957f1e23fc40a4396c176524928ee1bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e8bf0b5-8477-10cf-b7b7-89746e61d55a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38bd31a7-365d-df3d-d5ac-a88d6d8a1067",
  "kind": "theorem",
  "lexical_name": "li.two_approx_weak",
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
  "slug": "li-two-approx-weak--924d78ca04047d479610d55e",
  "source": {
    "blob": "6b7c25d8957f1e23fc40a4396c176524928ee1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 234,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:924d78ca04047d479610d55efc97c04d5b81c58fea99d97aecc89389e4d2301a",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38bd31a7-365d-df3d-d5ac-a88d6d8a1067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li.two_approx_weak : li 2 ∈ Set.Icc 1.039 1.06 := by
  rw [li_eq_Li2Bounds_li]
  exact Li2Bounds.li_two_approx_weak_proof

/-- The symmetric form equals the principal value li(2).
This connects the absolutely convergent symmetric integral
∫₀¹ g(t) dt to the principal value definition of li(2). -/
@[blueprint
  "li2-symmetric-eq"
  (title := "Symmetric form equals principal value")
  (statement := /--
    $\int_0^1 \left(\frac{1}{\log(1+t)}
    + \frac{1}{\log(1-t)}\right) dt = \mathrm{li}(2)$ -/)
  (latexEnv := "sublemma")
  (discussion := 764)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7c25d8957f1e23fc40a4396c176524928ee1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
