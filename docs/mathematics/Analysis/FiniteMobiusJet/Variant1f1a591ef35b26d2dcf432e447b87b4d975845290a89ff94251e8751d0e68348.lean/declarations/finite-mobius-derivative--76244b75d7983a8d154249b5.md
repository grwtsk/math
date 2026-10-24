# finite_mobius_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb662fd8-087c-f45d-1ae4-7a6da186ff90",
  "kind": "theorem",
  "lexical_name": "finite_mobius_derivative",
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
  "slug": "finite-mobius-derivative--76244b75d7983a8d154249b5",
  "source": {
    "blob": "e3ff04d28de626aad9504025c07a2a89b3d6b700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 84,
    "path": "GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76244b75d7983a8d154249b5d2ac436839df045e4d9b9ca25029101d6d48564e",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb662fd8-087c-f45d-1ae4-7a6da186ff90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_mobius_derivative (U : ℕ) :
    HasDerivAt (finiteMobius U) (-(momentOne U : ℂ)) 1 := by
  have h := HasDerivAt.fun_sum (u := Finset.Icc 1 U)
    (fun n hn ↦ (atom_derivative_at_one (Finset.mem_Icc.mp hn).1).const_mul
      ((μ : ArithmeticFunction ℝ) n : ℂ))
  change HasDerivAt (finiteMobius U)
    (∑ n ∈ Finset.Icc 1 U,
      ((μ : ArithmeticFunction ℝ) n : ℂ) * (-(Real.log n : ℂ) / n)) 1 at h
  convert h using 1
  unfold momentOne
  rw [Complex.ofReal_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3ff04d28de626aad9504025c07a2a89b3d6b700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
