# ne_zero_of_mem_finMulAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1247aee6-3b24-455e-563f-167106851023",
  "kind": "theorem",
  "lexical_name": "ne_zero_of_mem_finMulAntidiag",
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
  "slug": "ne-zero-of-mem-finmulantidiag--6b6bd403252b0e008f684f74",
  "source": {
    "blob": "81fb6e3d55fd82acd47c9b0f8731696590dc9338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b6bd403252b0e008f684f7495d2e5af2ee89e6ee85a3f2b61966984be0dc255",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1247aee6-3b24-455e-563f-167106851023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_zero_of_mem_finMulAntidiag {d n : ℕ} {f : Fin d → ℕ}
    (hf : f ∈ finMulAntidiag d n) (i : Fin d) : f i ≠ 0 :=
  ne_zero_of_dvd_ne_zero (mem_finMulAntidiag.mp hf).2 (dvd_of_mem_finMulAntidiag hf i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81fb6e3d55fd82acd47c9b0f8731696590dc9338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
