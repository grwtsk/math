# reduce_flatten_replicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41a3a4f9-2f59-8b31-2fe3-8ad78e37f309",
  "kind": "theorem",
  "lexical_name": "reduce_flatten_replicate",
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
  "slug": "reduce-flatten-replicate--f99d9385a057aedd9acf7c6d",
  "source": {
    "blob": "cf7526ddb011658e8955ed07e87706f8bf3db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99d9385a057aedd9acf7c6d25d575355c1cb666d0d455eb6d2da1335ed9b0fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41a3a4f9-2f59-8b31-2fe3-8ad78e37f309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_flatten_replicate (h : IsReduced L) (n : ℕ) :
    reduce (List.replicate n L).flatten = if n = 0 then [] else conjugator L ++
    (List.replicate n (reduceCyclically L)).flatten ++ invRev (conjugator L) :=
  match n with
  | 0 => by simp
  | n + 1 => reduce_flatten_replicate_succ h n

end reduceCyclically

section IsMulTorsionFree
open reduceCyclically

/-- Free groups are torsion-free, i.e., taking powers is injective. Our proof idea is as follows:
if `x ^ n = y ^ n`, then also `x ^ (2 * n) = y ^ (2 * n)`. We then compare the reduced words
representing the powers in terms of the cyclic reductions of `x.toWord` and `y.toWord` using
`reduce_flatten_replicate`. We conclude that the cyclic reductions of `x.toWord` and `y.toWord` must
have the same length, and in fact they have to agree. -/
@[to_additive /-- Free additive groups are torsion free, i.e., scalar multiplication by every
non-zero element `n : ℕ` is injective. See the instance for free groups for an overview over the
proof. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7526ddb011658e8955ed07e87706f8bf3db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
