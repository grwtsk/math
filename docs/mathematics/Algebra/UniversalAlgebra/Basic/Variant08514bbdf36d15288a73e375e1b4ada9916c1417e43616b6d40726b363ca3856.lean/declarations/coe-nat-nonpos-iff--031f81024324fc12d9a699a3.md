# coe_nat_nonpos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfaf28e4-04a8-2729-e01c-fdd4e0c50c73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8efed5ca-f6d2-92be-44b4-0fc5aa5c54e8",
  "kind": "theorem",
  "lexical_name": "coe_nat_nonpos_iff",
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
  "slug": "coe-nat-nonpos-iff--031f81024324fc12d9a699a3",
  "source": {
    "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 508,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:031f81024324fc12d9a699a36ddf3f6fd994fb4ef93f4ad0919de534a02dbbdf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8efed5ca-f6d2-92be-44b4-0fc5aa5c54e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_nat_nonpos_iff {n : ℕ} : (n : ℤ) ≤ 0 ↔ n = 0 :=
  ⟨fun h => le_antisymm (Int.ofNat_le.mp (h.trans Int.ofNat_zero.le)) n.zero_le,
   fun h => (coe_nat_eq_zero.mpr h).le⟩
#align int.coe_nat_nonpos_iff Int.coe_nat_nonpos_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a321d236658e896744880bc853bb7bdc52c2a0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
