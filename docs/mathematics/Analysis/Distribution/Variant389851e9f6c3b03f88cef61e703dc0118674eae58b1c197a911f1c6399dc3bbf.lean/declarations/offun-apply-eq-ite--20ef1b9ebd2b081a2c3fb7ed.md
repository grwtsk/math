# ofFun_apply_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d55203f-58b7-2353-b3c8-88b3d66ba7ec",
  "kind": "theorem",
  "lexical_name": "ofFun_apply_eq_ite",
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
  "slug": "offun-apply-eq-ite--20ef1b9ebd2b081a2c3fb7ed",
  "source": {
    "blob": "426f6f9e8a3f7ac7238b5125976d16ce05bd53eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 325,
    "path": "GRWTSK/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20ef1b9ebd2b081a2c3fb7ed7afd13ef698f149899a8368f4986d127e1a3d679",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d55203f-58b7-2353-b3c8-88b3d66ba7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFun_apply_eq_ite {f : E → F} {μ : Measure E} {φ : 𝓓^{n}(Ω, ℝ)} :
    ofFun Ω f μ n φ = if LocallyIntegrableOn f Ω μ then ∫ x, φ x • f x ∂μ else 0 := by
  grind [ofFun_eq_zero, ofFun_apply]

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426f6f9e8a3f7ac7238b5125976d16ce05bd53eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
