# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e9bb5bc7227c1ce89a35028bf9c97558a0937c5daad246ff0278fbec018f609",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--7bdf10e31bba4aae9b11c91a",
  "source": {
    "blob": "27effbad673b197074869cd2f2d11ae1069e5363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 219,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bdf10e31bba4aae9b11c91af1f400e0a5ecee126fae4d2c5e88ba7fe40a39a3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e9bb5bc7227c1ce89a35028bf9c97558a0937c5daad246ff0278fbec018f609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x : ℝ) (f : ℝ → ℝ) : True := by
  let y := x
  /-
  Two of these fail, and two of these succeed in rewriting the instance, so it's not a good idea
  to use `fail_if_success` since the instances could change without warning.
  -/
  have : x = y := by
    ring_nf -failIfUnchanged
    ring_nf!
  have : x - y = 0 := by
    ring_nf -failIfUnchanged
    ring_nf!
  have : f x = f y := by
    ring_nf -failIfUnchanged
    ring_nf!
  have : f x - f y = 0 := by
    ring_nf -failIfUnchanged
    ring_nf!
  trivial

-- Test that `ring_nf` doesn't get confused about bound variables
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27effbad673b197074869cd2f2d11ae1069e5363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
