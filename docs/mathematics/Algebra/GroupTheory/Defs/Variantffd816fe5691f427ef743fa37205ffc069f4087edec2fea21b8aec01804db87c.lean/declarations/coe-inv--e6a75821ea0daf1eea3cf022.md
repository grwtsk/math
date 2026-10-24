# coe_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14cfbee5-ce7d-c187-d053-97695a3444cb",
  "kind": "theorem",
  "lexical_name": "coe_inv",
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
  "slug": "coe-inv--e6a75821ea0daf1eea3cf022",
  "source": {
    "blob": "c6c621dcda390ad437212eb1495cf32d24d3f0b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 144,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6a75821ea0daf1eea3cf022508dbf34bee40fb487b163ba9846d3619acaad19",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14cfbee5-ce7d-c187-d053-97695a3444cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_inv (x : H) : (x⁻¹).1 = x.1⁻¹ :=
  rfl

end InvMemClass

namespace SubgroupClass

-- Here we assume H, K, and L are subgroups, but in fact any one of them
-- could be allowed to be a subsemigroup.
-- Counterexample where K and L are submonoids: H = ℤ, K = ℕ, L = -ℕ
-- Counterexample where H and K are submonoids: H = {n | n = 0 ∨ 3 ≤ n}, K = 3ℕ + 4ℕ, L = 5ℤ
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c621dcda390ad437212eb1495cf32d24d3f0b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
