# forwardProduct_half_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12936e00-97ba-828a-0dc8-bd4159b0d6c3",
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
  "slug": "forwardproduct-half-compatible--cea52e25274482568b3e79aa",
  "source": {
    "blob": "df0b8e179f907e9983170f50c5db8fae6dcf5693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 207,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cea52e25274482568b3e79aa2668d157a64c791228802192e428f1d11424554d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12936e00-97ba-828a-0dc8-bd4159b0d6c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–221.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0b8e179f907e9983170f50c5db8fae6dcf5693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
