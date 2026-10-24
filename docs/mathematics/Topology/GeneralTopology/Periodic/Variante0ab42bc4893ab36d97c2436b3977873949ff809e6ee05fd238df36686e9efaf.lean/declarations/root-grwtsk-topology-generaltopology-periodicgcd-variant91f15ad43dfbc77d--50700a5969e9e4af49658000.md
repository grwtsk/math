# _root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.Function.Periodic.map_mod_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcb50c3d-9f4e-80fd-6fa5-8991cc4e0dbc",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.Function.Periodic.map_mod_nat",
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
  "slug": "root-grwtsk-topology-generaltopology-periodicgcd-variant91f15ad43dfbc77d--50700a5969e9e4af49658000",
  "source": {
    "blob": "dd04e43cf7875b14a9e9ea42fa0f4aaaba11cc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50700a5969e9e4af49658000b922c42863cac3a87ac15a870863419312876209",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb50c3d-9f4e-80fd-6fa5-8991cc4e0dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.Function.Periodic.map_mod_nat {α : Type*} {f : ℕ → α} {a : ℕ} (hf : Periodic f a) :
    ∀ n, f (n % a) = f n := fun n => by
  conv_rhs => rw [← Nat.mod_add_div n a, mul_comm, ← Nat.nsmul_eq_mul, hf.nsmul]
#align function.periodic.map_mod_nat Function.Periodic.map_mod_nat

section Multiset

open Multiset

/-- An interval of length `a` filtered over a periodic predicate of period `a` has cardinality
equal to the number naturals below `a` for which `p a` is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd04e43cf7875b14a9e9ea42fa0f4aaaba11cc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
