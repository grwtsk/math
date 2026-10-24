# extendWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea5aac101a9b416e6739d6c90d2672b50ef845a86f4f1cd5a28bdb55a71a3c47",
  "kind": "def",
  "lexical_name": "extendWith",
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
  "slug": "extendwith--3e0fae57fe66d2c911da4425",
  "source": {
    "blob": "2c4f0537cd074228bcd759c3f288cdade0fc2959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1187,
    "line": 1177,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e0fae57fe66d2c911da44255edfef4f84c01c56b3c8242c4dc4cd07ea004fbc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea5aac101a9b416e6739d6c90d2672b50ef845a86f4f1cd5a28bdb55a71a3c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1177–1187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendWith [∀ i, Zero (α i)] (a : α none) (f : Π₀ i, α (some i)) : Π₀ i, α i where
  toFun := fun i ↦ match i with | none => a | some _ => f _
  support' :=
    f.support'.map fun s =>
      ⟨none ::ₘ Multiset.map some s.1, fun i =>
        Option.rec (Or.inl <| Multiset.mem_cons_self _ _)
          (fun i =>
            (s.prop i).imp_left fun h => Multiset.mem_cons_of_mem <| Multiset.mem_map_of_mem _ h)
          i⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean#L1177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4f0537cd074228bcd759c3f288cdade0fc2959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
