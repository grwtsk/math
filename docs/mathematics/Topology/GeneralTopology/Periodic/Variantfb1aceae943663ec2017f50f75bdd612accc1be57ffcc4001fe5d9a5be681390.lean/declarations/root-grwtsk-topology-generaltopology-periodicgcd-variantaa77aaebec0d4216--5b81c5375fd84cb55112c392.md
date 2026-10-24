# _root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.Function.Periodic.map_mod_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:236f5088-1397-7287-fa80-3d839e66c8f9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.Function.Periodic.map_mod_nat",
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
  "slug": "root-grwtsk-topology-generaltopology-periodicgcd-variantaa77aaebec0d4216--5b81c5375fd84cb55112c392",
  "source": {
    "blob": "f2e3451442fa82a871ed14b030f6981e9369bd2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b81c5375fd84cb55112c3928b8ffc47053fea898ce6a9634bf7dda3e103078b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:236f5088-1397-7287-fa80-3d839e66c8f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.Function.Periodic.map_mod_nat {α : Type*} {f : ℕ → α} {a : ℕ} (hf : Periodic f a) :
    ∀ n, f (n % a) = f n := fun n => by
  conv_rhs => rw [← Nat.mod_add_div n a, mul_comm, ← Nat.nsmul_eq_mul, hf.nsmul]

section Multiset

open Multiset

/-- An interval of length `a` filtered over a periodic predicate of period `a` has cardinality
equal to the number naturals below `a` for which `p a` is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2e3451442fa82a871ed14b030f6981e9369bd2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
