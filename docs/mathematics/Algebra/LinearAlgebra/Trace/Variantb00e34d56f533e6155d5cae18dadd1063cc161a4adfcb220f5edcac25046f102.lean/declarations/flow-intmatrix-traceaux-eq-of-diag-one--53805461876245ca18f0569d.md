# Flow.IntMatrix.traceAux_eq_of_diag_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7e87530-961b-1c9b-2b68-ddd6901b377c",
  "kind": "theorem",
  "lexical_name": "Flow.IntMatrix.traceAux_eq_of_diag_one",
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
  "slug": "flow-intmatrix-traceaux-eq-of-diag-one--53805461876245ca18f0569d",
  "source": {
    "blob": "45908c839d031d8bbfd5ece1602bc65b034f5681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53805461876245ca18f0569d54b7c15d653dff0f00970cc6a03c232f853b0510",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e87530-961b-1c9b-2b68-ddd6901b377c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Flow.IntMatrix.traceAux_eq_of_diag_one
    {n : Nat}
    (A : Flow.IntMatrix n n)
    (hdiag : ∀ i : Fin n, A i i = 1)
    (limit : Nat)
    (hlimit : limit ≤ n) :
    Flow.IntMatrix.traceAux A limit hlimit = (limit : Int) := by
  induction limit with
  | zero =>
      rfl
  | succ k ih =>
      have hk : k ≤ n := Nat.le_trans (Nat.le_succ k) hlimit
      have hdiagk : A ⟨k, hlimit⟩ ⟨k, hlimit⟩ = 1 :=
        hdiag ⟨k, hlimit⟩
      simp [Flow.IntMatrix.traceAux, ih hk, hdiagk]

/--
If every diagonal entry of a square integer matrix is `1`, then its trace is the
matrix size.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45908c839d031d8bbfd5ece1602bc65b034f5681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
