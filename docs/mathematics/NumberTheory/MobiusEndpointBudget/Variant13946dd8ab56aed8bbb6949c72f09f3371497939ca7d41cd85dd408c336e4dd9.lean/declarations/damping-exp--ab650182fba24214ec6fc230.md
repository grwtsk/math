# damping_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96b7841b-ec6b-f662-f6d1-c164cc6416af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fb4e9c1-0092-0fb4-c09d-896c35b2ff48",
  "kind": "theorem",
  "lexical_name": "damping_exp",
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
  "slug": "damping-exp--ab650182fba24214ec6fc230",
  "source": {
    "blob": "bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 142,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab650182fba24214ec6fc23023ce934eb433b7acc033601e0863b4cf6dfcde19",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb4e9c1-0092-0fb4-c09d-896c35b2ff48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem damping_exp (d : ℕ) (ε : ℝ) (z : ℂ) :
    (Real.exp (-ε * Real.log (d : ℝ)) : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) =
      Complex.exp (-(1 / 2 + (z + (ε : ℂ))) * (Real.log (d : ℝ) : ℂ)) := by
  rw [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The new finite coefficients represent the unchanged corrected numerator, with its full phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
