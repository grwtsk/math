# forwardProduct_half_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab1344cf-a32f-d863-880e-db1fb3d98cf7",
  "kind": "theorem",
  "lexical_name": "forwardProduct_half_compatible",
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
  "slug": "forwardproduct-half-compatible--8ff2b29afdee35b296e4f52c",
  "source": {
    "blob": "2441aa420267a3a8f616dbb8bf00c4a78e9fdff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ff2b29afdee35b296e4f52ce81d1ea842455b466ddf3971655b62bd0dfad32e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab1344cf-a32f-d863-880e-db1fb3d98cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardProduct_half_compatible (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) :
    forwardProduct system (antipode h p) n =
      forwardProduct system p n := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [forwardProduct_succ, forwardProduct_succ,
        system.half_compatible, successor_commutes_antipode, ih]

/--
The global section operator: the value at phase `p + 1` is obtained by
applying the step at `p` to the old value at `p`.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2441aa420267a3a8f616dbb8bf00c4a78e9fdff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
