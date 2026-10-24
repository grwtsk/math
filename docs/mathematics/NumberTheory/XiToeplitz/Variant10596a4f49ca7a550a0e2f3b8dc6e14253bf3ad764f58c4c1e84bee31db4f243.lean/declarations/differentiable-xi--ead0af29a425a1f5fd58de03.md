# differentiable_xi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd1f999-5d70-3108-9853-9bedf3dc4337",
  "kind": "theorem",
  "lexical_name": "differentiable_xi",
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
  "slug": "differentiable-xi--ead0af29a425a1f5fd58de03",
  "source": {
    "blob": "a948422878c679712386f55c18dc80205709163a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead0af29a425a1f5fd58de035f47beb5dd4aa67eb2ac19e05e436410057e01ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd1f999-5d70-3108-9853-9bedf3dc4337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_xi : Differentiable ℂ xi := by
  have hp : Differentiable ℂ (fun s : ℂ => s * (s - 1)) :=
    differentiable_id.mul (differentiable_id.sub_const 1)
  have hm := hp.mul differentiable_completedZeta₀
  exact ((differentiable_const 1).add hm).div_const (2 : ℂ)

/-- The actual completed source supplies the functional-equation reflection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a948422878c679712386f55c18dc80205709163a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
