# eq_zero_of_mem_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7907ead9-0293-251b-2f7b-cd30c672c7d9",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_mem_orthogonal",
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
  "slug": "eq-zero-of-mem-orthogonal--ede402bf49415885c7e82459",
  "source": {
    "blob": "645ecd35577ed338fe39a1b3125d43595865111b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede402bf49415885c7e82459fc2e59e6a914ba78ba0fb17c380cb21613cc2fc5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7907ead9-0293-251b-2f7b-cd30c672c7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_mem_orthogonal (hK : Dense (K : Set E)) (h : x ∈ Kᗮ) : x = 0 :=
  eq_zero_of_inner_left 𝕜 hK fun _ ↦ (mem_orthogonal' _ _).1 h _

/-- If `S` is dense and `x - y ∈ Kᗮ`, then `x = y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `645ecd35577ed338fe39a1b3125d43595865111b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
